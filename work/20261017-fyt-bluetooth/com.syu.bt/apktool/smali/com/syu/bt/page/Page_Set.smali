.class public Lcom/syu/bt/page/Page_Set;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Set.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/page/Page_Set$RunnableHideText;
    }
.end annotation


# static fields
.field public static actBt:Lcom/syu/bt/Act_Bt;

.field public static iRunnAIQR:I

.field static iRunnAIQR_BTN:Z

.field public static isSetStartDiscovey:Z

.field public static mRunnAIQR:Ljava/lang/Runnable;

.field public static mRunnAIQR_BTN:Ljava/lang/Runnable;

.field public static mRunnExitAIQR:Ljava/lang/Runnable;

.field public static mSet_Switch_AI_KG:Lcom/syu/bt/ctrl/JSwitchButon2;

.field public static mSet_Switch_AI_KG2:Lcom/syu/bt/ctrl/JSwitchButon2;

.field public static tvBtAi:Landroid/view/View;

.field public static tvBtAi2:Landroid/view/View;

.field public static tvSetCodec:Lcom/lsec/core/frame/ctrl/JText;

.field public static tvSetMsbc:Lcom/lsec/core/frame/ctrl/JText;

.field public static tvSetTxtAI:Lcom/lsec/core/frame/ctrl/JText;

.field public static tvSetTxtAIKG:Lcom/lsec/core/frame/ctrl/JText;

.field public static tvSetTxtAIKG2:Lcom/lsec/core/frame/ctrl/JText;

.field public static tvSetTxtAI_KG:Lcom/lsec/core/frame/ctrl/JText;

.field public static tvSetTxtAI_KG2:Lcom/lsec/core/frame/ctrl/JText;

.field public static vBtAiKG:Landroid/view/View;

.field public static vBtAiKG2:Landroid/view/View;


# instance fields
.field public View_Color:Landroid/view/View;

.field animReset:Landroid/animation/ValueAnimator;

.field public bDevEditFlag:Z

.field public bPinEditFlag:Z

.field check_BtMic:Lcom/lsec/core/frame/ctrl/JSwitchButton;

.field private idAutoSelect:I

.field public isAutoAnswer:Z

.field public isClickReSet:Z

.field public isSetSelfLink:Z

.field mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field public mBTOnOff:Lcom/syu/bt/ctrl/JSwitchButon2;

.field public mBtReset:Lcom/lsec/core/frame/ctrl/JButton;

.field public mBtRing:Lcom/lsec/core/frame/ctrl/JButton;

.field mBtnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

.field mButtonCarplayAuto:Lcom/lsec/core/frame/ctrl/JSwitchButton;

.field mButtonCarplayAuto2:Lcom/syu/bt/ctrl/JSwitchButon2;

.field public mEditName:Landroid/widget/EditText;

.field public mEditPin:Landroid/widget/EditText;

.field private mFocus:Landroid/view/View$OnFocusChangeListener;

.field mProgLoad:Landroid/view/View;

.field mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

.field public mRunnable_ColorDlgShow:Ljava/lang/Runnable;

.field public mSB2:Lcom/syu/bt/ctrl/JSwitchButon2;

.field public mSMS2:Lcom/syu/bt/ctrl/JSwitchButon2;

.field public mTextCarplayAuto:Lcom/lsec/core/frame/ctrl/JText;

.field public mTvPin:Lcom/lsec/core/frame/ctrl/JText;

.field public mViewPin:Landroid/view/View;

.field private nightBtn:[I

.field private nightText:[I

.field private nightView:[I

.field resetDelay:I

.field public sb_set:[I

.field strBtAvMicSet:Ljava/lang/String;

.field strPhoneMicSet:Ljava/lang/String;

.field strRingLevel:Ljava/lang/String;

.field public tvBtAvMicSet:Lcom/lsec/core/frame/ctrl/JText;

.field public tvBtReset:Lcom/lsec/core/frame/ctrl/JText;

.field public tvColor:Lcom/lsec/core/frame/ctrl/JText;

.field public tvDevName:Lcom/lsec/core/frame/ctrl/JText;

.field public tvLinkName:Lcom/lsec/core/frame/ctrl/JText;

.field public tvPhoneMicSet:Lcom/lsec/core/frame/ctrl/JText;

.field public tvPhoneState:Lcom/lsec/core/frame/ctrl/JText;

.field public tvPin:Lcom/lsec/core/frame/ctrl/JText;

.field public tvRingName:Lcom/lsec/core/frame/ctrl/JText;

.field public tvRingSet:Lcom/lsec/core/frame/ctrl/JText;

.field public tv_BtMic:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    sput-boolean v1, Lcom/syu/bt/page/Page_Set;->isSetStartDiscovey:Z

    .line 1286
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syu/bt/page/Page_Set;->iRunnAIQR_BTN:Z

    .line 1287
    new-instance v0, Lcom/syu/bt/page/Page_Set$2;

    invoke-direct {v0}, Lcom/syu/bt/page/Page_Set$2;-><init>()V

    sput-object v0, Lcom/syu/bt/page/Page_Set;->mRunnAIQR_BTN:Ljava/lang/Runnable;

    .line 1294
    new-instance v0, Lcom/syu/bt/page/Page_Set$3;

    invoke-direct {v0}, Lcom/syu/bt/page/Page_Set$3;-><init>()V

    sput-object v0, Lcom/syu/bt/page/Page_Set;->mRunnExitAIQR:Ljava/lang/Runnable;

    .line 1300
    sput v1, Lcom/syu/bt/page/Page_Set;->iRunnAIQR:I

    .line 1301
    new-instance v0, Lcom/syu/bt/page/Page_Set$4;

    invoke-direct {v0}, Lcom/syu/bt/page/Page_Set$4;-><init>()V

    sput-object v0, Lcom/syu/bt/page/Page_Set;->mRunnAIQR:Ljava/lang/Runnable;

    .line 1335
    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 75
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Set;->isSetSelfLink:Z

    .line 77
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Set;->isClickReSet:Z

    .line 78
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Set;->bDevEditFlag:Z

    .line 79
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Set;->bPinEditFlag:Z

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/syu/bt/page/Page_Set;->idAutoSelect:I

    .line 83
    iput-boolean v1, p0, Lcom/syu/bt/page/Page_Set;->isAutoAnswer:Z

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/syu/bt/page/Page_Set;->sb_set:[I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Set;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    .line 124
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 147
    iput-object v0, p0, Lcom/syu/bt/page/Page_Set;->nightBtn:[I

    .line 150
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 156
    iput-object v0, p0, Lcom/syu/bt/page/Page_Set;->nightView:[I

    .line 158
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    .line 179
    iput-object v0, p0, Lcom/syu/bt/page/Page_Set;->nightText:[I

    .line 760
    new-instance v0, Lcom/syu/bt/page/Page_Set$1;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Set$1;-><init>(Lcom/syu/bt/page/Page_Set;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Set;->mFocus:Landroid/view/View$OnFocusChangeListener;

    .line 829
    iput v1, p0, Lcom/syu/bt/page/Page_Set;->resetDelay:I

    .line 1336
    new-instance v0, Lcom/syu/bt/page/Page_Set$5;

    invoke-direct {v0, p0}, Lcom/syu/bt/page/Page_Set$5;-><init>(Lcom/syu/bt/page/Page_Set;)V

    iput-object v0, p0, Lcom/syu/bt/page/Page_Set;->mRunnable_ColorDlgShow:Ljava/lang/Runnable;

    .line 183
    sput-object p2, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    .line 184
    return-void

    .line 124
    nop

    :array_0
    .array-data 4
        0x2876
        0x2878
        0x292c
        0x287f
        0x288d
        0x288f
        0x2884
        0x287a
        0x2889
        0x288a
        0x288b
        0x2887
        0x2894
        0x2895
        0x2744
        0x2745
        0x274e
        0x2746
        0x274c
        0x274d
        0x28c1
        0x28c6
        0x2895
    .end array-data

    .line 150
    :array_1
    .array-data 4
        0x273d
        0x2988
        0x2989
        0x298a
        0x298b
        0x298c
        0x298d
        0x298e
        0x298f
        0x2990
        0x2991
        0x2992
        0x2993
    .end array-data

    .line 158
    :array_2
    .array-data 4
        0x2877
        0x2879
        0x287c
        0x287d
        0x2886
        0x2893
        0x287e
        0x2896
        0x2890
        0x287b
        0x2994
        0x289f
        0x28c2
        0x28c7
        0x28a1
        0x289e
        0x2995
        0x2996
        0x2997
        0x2998
        0x2999
        0x299a
        0x299b
        0x299c
        0x299d
        0x299e
        0x299f
        0x29a0
        0x29a1
    .end array-data
.end method

.method public static showAIGT()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0xffff

    const/16 v3, 0x8

    .line 1755
    const-string v0, "gdyyai"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 00 Page_Set  showAIGT isAIGT_Aiuvoice = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  isAIGT_OnOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " App_Bt.bAI_JZ2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    if-nez v0, :cond_2

    .line 1758
    sget-object v0, Lcom/syu/bt/page/Page_Set;->vBtAiKG2:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1759
    sget-object v0, Lcom/syu/bt/page/Page_Set;->vBtAiKG2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1760
    :cond_0
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvBtAi2:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1761
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvBtAi2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1810
    :cond_1
    :goto_0
    return-void

    .line 1765
    :cond_2
    const-string v0, "ai"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 11 Page_Set  showAIGT isAIGT_Aiuvoice = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  0xffff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    sget-object v0, Lcom/syu/bt/page/Page_Set;->vBtAiKG2:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1767
    const-string v0, "ai"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 22 Page_Set  showAIGT isAIGT_Aiuvoice = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  0xffff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    sget v0, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-eq v0, v4, :cond_8

    .line 1770
    sget-object v0, Lcom/syu/bt/page/Page_Set;->vBtAiKG2:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1775
    :cond_3
    :goto_1
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvBtAi2:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1776
    const-string v0, "ai"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 44 Page_Set  tvBtAi2 isAIGT_Aiuvoice = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  0xffff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    sget v0, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    sget v0, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    const/16 v1, 0x751

    if-ne v0, v1, :cond_9

    .line 1778
    :cond_4
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvBtAi2:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1785
    :cond_5
    :goto_2
    sget-object v0, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG2:Lcom/syu/bt/ctrl/JSwitchButon2;

    if-eqz v0, :cond_6

    .line 1786
    sget-object v0, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG2:Lcom/syu/bt/ctrl/JSwitchButon2;

    sget-boolean v1, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    invoke-virtual {v0, v1}, Lcom/syu/bt/ctrl/JSwitchButon2;->setSwitch(Z)V

    .line 1789
    :cond_6
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAIKG:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_7

    .line 1790
    sget v0, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-nez v0, :cond_b

    .line 1792
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    if-eqz v0, :cond_a

    .line 1793
    const-string v0, "gdyyai"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " *** 33 showAIGT tvSetTxtAIKG.setText = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_aikg1"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAIKG:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_aikg1"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1803
    :cond_7
    :goto_3
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAIKG2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_1

    .line 1804
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    if-eqz v0, :cond_c

    .line 1805
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAIKG2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_opened"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1772
    :cond_8
    sget-object v0, Lcom/syu/bt/page/Page_Set;->vBtAiKG2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1781
    :cond_9
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvBtAi2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1797
    :cond_a
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAIKG:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_aikg2"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1799
    :cond_b
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAIKG:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Error Code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1807
    :cond_c
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAIKG2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_closed"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public static updateAI()V
    .locals 3

    .prologue
    .line 1812
    const-string v0, "gdyy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " *** updateAI  App_Bt.isAIOnOff = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " App_Bt.bAI_JZ2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvBtAi:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1814
    sget v0, Lcom/syu/bt/App_Bt;->isAIType:I

    if-ltz v0, :cond_2

    .line 1815
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvBtAi:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1820
    :cond_0
    :goto_0
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAI:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_1

    .line 1821
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-eqz v0, :cond_3

    .line 1822
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAI:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_ai3"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1826
    :cond_1
    :goto_1
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateAIKG()V

    .line 1827
    return-void

    .line 1817
    :cond_2
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvBtAi:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1824
    :cond_3
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAI:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_ai2"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static updateAIKG()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1830
    const-string v0, "gdyyai"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " *** updateAIKG  App_Bt.isAIOnOff = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " App_Bt.bAI_JZ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAI_JZ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    if-eqz v0, :cond_1

    .line 1832
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->showAIGT()V

    .line 1882
    :cond_0
    :goto_0
    return-void

    .line 1835
    :cond_1
    sget-object v0, Lcom/syu/bt/page/Page_Set;->vBtAiKG:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1836
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-eqz v0, :cond_7

    .line 1837
    sget-object v0, Lcom/syu/bt/page/Page_Set;->vBtAiKG:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1842
    :cond_2
    :goto_1
    sget-object v0, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG:Lcom/syu/bt/ctrl/JSwitchButon2;

    if-eqz v0, :cond_3

    .line 1843
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-eqz v0, :cond_8

    .line 1844
    sget-object v0, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG:Lcom/syu/bt/ctrl/JSwitchButon2;

    invoke-virtual {v0, v3}, Lcom/syu/bt/ctrl/JSwitchButon2;->setVisibility(I)V

    .line 1849
    :cond_3
    :goto_2
    sget-object v0, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG:Lcom/syu/bt/ctrl/JSwitchButon2;

    if-eqz v0, :cond_4

    .line 1850
    sget-object v0, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG:Lcom/syu/bt/ctrl/JSwitchButon2;

    sget-boolean v1, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    invoke-virtual {v0, v1}, Lcom/syu/bt/ctrl/JSwitchButon2;->setSwitch(Z)V

    .line 1854
    :cond_4
    const-string v0, "gdyyai"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " *** 00 updateAIKG  App_Bt.isAIOnOff = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAI_KG:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_5

    .line 1856
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    if-eqz v0, :cond_9

    .line 1857
    const-string v0, "gdyyai"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " *** 11 updateAIKG tvSetTxtAIKG.setText = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_aikg1"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAI_KG:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_aikg1"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1867
    :cond_5
    :goto_3
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAIKG2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_6

    .line 1868
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    if-eqz v0, :cond_a

    .line 1869
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAIKG2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_opened"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1875
    :cond_6
    :goto_4
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAI_KG2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 1876
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    if-eqz v0, :cond_b

    .line 1877
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAI_KG2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_opened"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1839
    :cond_7
    sget-object v0, Lcom/syu/bt/page/Page_Set;->vBtAiKG:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1846
    :cond_8
    sget-object v0, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG:Lcom/syu/bt/ctrl/JSwitchButon2;

    invoke-virtual {v0, v4}, Lcom/syu/bt/ctrl/JSwitchButon2;->setVisibility(I)V

    goto/16 :goto_2

    .line 1861
    :cond_9
    const-string v0, "gdyyai"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " *** 11 updateAIKG tvSetTxtAIKG.setText = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_aikg2"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAI_KG:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_aikg2"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1871
    :cond_a
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAIKG2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_closed"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1879
    :cond_b
    sget-object v0, Lcom/syu/bt/page/Page_Set;->tvSetTxtAI_KG2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_closed"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public static updateCodec()V
    .locals 3

    .prologue
    .line 1884
    const-string v1, "persist.blinkbt.a2dp.codec"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1885
    .local v0, "iCodec":I
    sget-object v1, Lcom/syu/bt/page/Page_Set;->tvSetCodec:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_0

    .line 1886
    packed-switch v0, :pswitch_data_0

    .line 1901
    :cond_0
    :goto_0
    return-void

    .line 1888
    :pswitch_0
    sget-object v1, Lcom/syu/bt/page/Page_Set;->tvSetCodec:Lcom/lsec/core/frame/ctrl/JText;

    const-string v2, "sbc"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1891
    :pswitch_1
    sget-object v1, Lcom/syu/bt/page/Page_Set;->tvSetCodec:Lcom/lsec/core/frame/ctrl/JText;

    const-string v2, "sbc+aac"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1894
    :pswitch_2
    sget-object v1, Lcom/syu/bt/page/Page_Set;->tvSetCodec:Lcom/lsec/core/frame/ctrl/JText;

    const-string v2, "sbc+ldac"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1897
    :pswitch_3
    sget-object v1, Lcom/syu/bt/page/Page_Set;->tvSetCodec:Lcom/lsec/core/frame/ctrl/JText;

    const-string v2, "sbc+aac+ldac"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1886
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static updateMsbc()V
    .locals 4

    .prologue
    .line 1747
    const-string v1, "persist.blinkbt.msbc"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1748
    .local v0, "iMsbc":I
    sget-object v1, Lcom/syu/bt/page/Page_Set;->tvSetMsbc:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_0

    .line 1749
    sget-object v2, Lcom/syu/bt/page/Page_Set;->tvSetMsbc:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 1750
    const-string v3, "bt_bt_msbc1"

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1749
    :goto_0
    invoke-virtual {v2, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1753
    :cond_0
    return-void

    .line 1750
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 1751
    const-string v3, "bt_bt_msbc2"

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public GridClick(Lcom/lsec/core/frame/ctrl/JGridView;)V
    .locals 5
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;

    .prologue
    .line 1623
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v1

    .line 1624
    .local v1, "id":I
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getPosition()I

    move-result v2

    .line 1625
    .local v2, "position":I
    packed-switch v1, :pswitch_data_0

    .line 1644
    :cond_0
    :goto_0
    return-void

    .line 1627
    :pswitch_0
    const/4 v0, 0x0

    .line 1628
    .local v0, "addr":Ljava/lang/String;
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1629
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 1630
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1631
    const/16 v4, 0x28ef

    .line 1630
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "addr":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1633
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1634
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1635
    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setChoiceAddr(Ljava/lang/String;)V

    .line 1637
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v3, p0}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncPairLink(Lcom/syu/bt/page/Page_Set;)V

    .line 1638
    iget-object v3, p1, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v3, :cond_0

    .line 1639
    iget-object v3, p1, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1625
    nop

    :pswitch_data_0
    .packed-switch 0x28ec
        :pswitch_0
    .end packed-switch
.end method

.method public GridPressed(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 4
    .param p1, "gridView"    # Lcom/lsec/core/frame/ctrl/JGridView;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    .line 1648
    if-eqz p3, :cond_1

    .line 1649
    iget-object v2, p1, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1655
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/lsec/core/frame/page/MyPage;->GridPressed(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    .line 1656
    return-void

    .line 1649
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1650
    .local v0, "pageReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/lsec/core/frame/ctrl/JPage;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JPage;

    .line 1651
    .local v1, "pageTmp":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v1, :cond_0

    .line 1652
    invoke-virtual {p0, v1, p2, p3}, Lcom/syu/bt/page/Page_Set;->pressGridItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V

    goto :goto_0
.end method

.method public InitGridItem(Lcom/lsec/core/frame/ctrl/JGridView;Lcom/lsec/core/frame/ctrl/JPage;Landroid/util/SparseArray;I)V
    .locals 10
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
    .line 1558
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JGridView;->getId()I

    move-result v0

    .line 1559
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 1619
    :cond_0
    :goto_0
    return-void

    .line 1562
    :pswitch_0
    const/16 v6, 0x28ed

    invoke-virtual {p2, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    .line 1563
    .local v5, "viewContent":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1564
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1565
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lcom/lsec/core/frame/ctrl/JPage;->setFocus(Z)V

    .line 1566
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1569
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1572
    :cond_2
    const/16 v6, 0x28ef

    invoke-virtual {p3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1574
    .local v1, "strAddr":Ljava/lang/String;
    const/16 v6, 0x28ef

    invoke-virtual {p2, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    .line 1573
    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 1576
    .local v3, "textName":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v6, 0x28f0

    invoke-virtual {p2, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 1575
    check-cast v2, Lcom/lsec/core/frame/ctrl/JText;

    .line 1579
    .local v2, "textAddr":Lcom/lsec/core/frame/ctrl/JText;
    const/16 v6, 0x28f1

    invoke-virtual {p2, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    .line 1580
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1581
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getPhoneAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1582
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1583
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 1584
    const-string v7, "bt_icocut"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v8, v8, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 1585
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    iget-object v9, v9, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 1583
    invoke-virtual {v6, v7, v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1587
    if-eqz v3, :cond_4

    .line 1588
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1589
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1590
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1592
    :cond_4
    if-eqz v2, :cond_0

    .line 1593
    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1594
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v6}, Lcom/lsec/core/frame/ctrl/JText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1595
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    goto/16 :goto_0

    .line 1598
    :cond_5
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 1599
    const-string v7, "bt_icolink"

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v8

    iget-object v8, v8, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 1600
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v9

    iget-object v9, v9, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 1598
    invoke-virtual {v6, v7, v8, v9}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1603
    if-eqz v3, :cond_6

    .line 1604
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1605
    const v6, -0xff0100

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1606
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    .line 1609
    :cond_6
    if-eqz v2, :cond_0

    .line 1610
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v6}, Lcom/lsec/core/frame/ctrl/JText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1611
    const v6, -0xff0100

    invoke-virtual {v2, v6}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 1612
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    goto/16 :goto_0

    .line 1559
    :pswitch_data_0
    .packed-switch 0x28ec
        :pswitch_0
    .end packed-switch
.end method

.method public ResponseClick(Landroid/view/View;)V
    .locals 26
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 912
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    sget-object v20, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 918
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v11

    .line 919
    .local v11, "id":I
    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    .line 1227
    :sswitch_0
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1230
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->link()V

    goto :goto_0

    .line 921
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->clearFocus()V

    .line 923
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/App_Bt;->hideInput(Landroid/view/View;)V

    .line 925
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v20

    const/16 v21, 0x288d

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 926
    .local v7, "edit":Landroid/widget/EditText;
    if-eqz v7, :cond_0

    .line 927
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v18

    .line 929
    .local v18, "tmpDevName":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 930
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v20

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_device_name_not_null"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 933
    :cond_3
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v20

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_update_successed"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 935
    const-string v20, "name"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, " 11 Set_Btn_DevNameOk setDevName  tmpDevName = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-static/range {v18 .. v18}, Lcom/syu/app/ipc/Bt_IpcObj;->setDevName(Ljava/lang/String;)V

    .line 937
    sget v20, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    packed-switch v20, :pswitch_data_0

    .line 959
    :cond_4
    :goto_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyPin()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/App_Bt;->SaveConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 939
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Set;->bDevEditFlag:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 940
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/syu/bt/page/Page_Set;->bDevEditFlag:Z

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mSB2:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mSB2:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/ctrl/JSwitchButon2;->setFocusableInTouchMode(Z)V

    .line 944
    :cond_5
    const/16 v20, 0x0

    new-instance v21, Lcom/syu/bt/page/Page_Set$17;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/syu/bt/page/Page_Set$17;-><init>(Lcom/syu/bt/page/Page_Set;)V

    .line 951
    const-wide/16 v22, 0x3e8

    .line 944
    invoke-static/range {v20 .. v23}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mSB2:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 954
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mSB2:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/App_Bt;->hideInput(Landroid/view/View;)V

    goto :goto_1

    .line 970
    .end local v7    # "edit":Landroid/widget/EditText;
    .end local v18    # "tmpDevName":Ljava/lang/String;
    :sswitch_2
    const/16 v19, 0x0

    .line 971
    .local v19, "tmpPin":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v20

    const/16 v21, 0x288f

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 972
    .restart local v7    # "edit":Landroid/widget/EditText;
    if-eqz v7, :cond_8

    .line 973
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v19

    .line 978
    :cond_6
    :goto_2
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 979
    :cond_7
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v20

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_pin_prompt"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 974
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 982
    :cond_9
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v20

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_update_successed"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 985
    invoke-static/range {v19 .. v19}, Lcom/syu/app/ipc/Bt_IpcObj;->setDevPin(Ljava/lang/String;)V

    .line 986
    sget v20, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    packed-switch v20, :pswitch_data_1

    .line 999
    :cond_a
    :goto_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/App_Bt;->SaveConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->clearFocus()V

    .line 1003
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/App_Bt;->hideInput(Landroid/view/View;)V

    goto/16 :goto_0

    .line 988
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Set;->bPinEditFlag:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 989
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/syu/bt/page/Page_Set;->bPinEditFlag:Z

    .line 990
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/syu/bt/App_Bt;->hideInput(Landroid/view/View;)V

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v20

    const/16 v21, 0x288d

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 993
    .local v8, "edit2":Landroid/widget/EditText;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 994
    invoke-virtual {v7}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_3

    .line 1009
    .end local v7    # "edit":Landroid/widget/EditText;
    .end local v8    # "edit2":Landroid/widget/EditText;
    .end local v19    # "tmpPin":Ljava/lang/String;
    :sswitch_3
    sget-object v20, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_closing"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    .line 1010
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Set;->isClickReSet:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 1013
    sget-boolean v20, Lcom/syu/bt/App_Bt;->bBtPowerOnOff:Z

    if-eqz v20, :cond_0

    .line 1017
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    move-object/from16 v20, v0

    const-string v21, "name_diy"

    sget-object v22, Lcom/syu/bt/App_Bt;->strDefaultName:Ljava/lang/String;

    invoke-virtual/range {v20 .. v22}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    move-object/from16 v20, v0

    const-string v21, "pin_diy"

    sget-object v22, Lcom/syu/bt/App_Bt;->strDefaultPin:Ljava/lang/String;

    invoke-virtual/range {v20 .. v22}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    sget-object v21, Lcom/syu/bt/App_Bt;->strDefaultName:Ljava/lang/String;

    sget-object v22, Lcom/syu/bt/App_Bt;->strDefaultPin:Ljava/lang/String;

    invoke-virtual/range {v20 .. v22}, Lcom/syu/bt/App_Bt;->SaveConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->Reset()V

    .line 1023
    sget-object v20, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_resetting"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    .line 1025
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->updateResetEnable(Z)V

    .line 1027
    sget-object v20, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    .line 1028
    sget-object v20, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 1030
    :cond_b
    new-instance v9, Ljava/io/File;

    const-string v20, "/mnt/sdcard/.btring/ring.mp3"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1032
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1033
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 1036
    .end local v9    # "file":Ljava/io/File;
    :sswitch_4
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    move-object/from16 v20, v0

    const-string v21, "ringtype"

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/lsec/core/util/MySharePreference2;->saveIntValue(Ljava/lang/String;I)V

    .line 1037
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->updateRingSelect(I)V

    goto/16 :goto_0

    .line 1040
    :sswitch_5
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    move-object/from16 v20, v0

    const-string v21, "ringtype"

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Lcom/lsec/core/util/MySharePreference2;->saveIntValue(Ljava/lang/String;I)V

    .line 1041
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->updateRingSelect(I)V

    goto/16 :goto_0

    .line 1044
    :sswitch_6
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    move-object/from16 v20, v0

    const-string v21, "ringtype"

    const/16 v22, 0x3

    invoke-virtual/range {v20 .. v22}, Lcom/lsec/core/util/MySharePreference2;->saveIntValue(Ljava/lang/String;I)V

    .line 1045
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->updateRingSelect(I)V

    goto/16 :goto_0

    .line 1048
    :sswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Set;->isClickReSet:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->popBtRing()V

    goto/16 :goto_0

    .line 1054
    :sswitch_8
    sget-object v20, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual/range {v20 .. v20}, Lcom/syu/bt/Act_Bt;->showPopMSBC()V

    goto/16 :goto_0

    .line 1057
    :sswitch_9
    sget-object v20, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual/range {v20 .. v20}, Lcom/syu/bt/Act_Bt;->showPopCODEC()V

    goto/16 :goto_0

    .line 1060
    :sswitch_a
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mRunnable_ColorDlgShow:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x320

    invoke-static/range {v20 .. v23}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 1068
    :sswitch_b
    sget-boolean v20, Lcom/syu/bt/App_Bt;->bLinkNet:Z

    if-nez v20, :cond_c

    .line 1069
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v20

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_ai9"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1072
    :cond_c
    sget-object v20, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual/range {v20 .. v20}, Lcom/syu/bt/Act_Bt;->showPopAIQR2()V

    goto/16 :goto_0

    .line 1076
    :sswitch_c
    sget-boolean v20, Lcom/syu/bt/App_Bt;->bNotRestart:Z

    if-eqz v20, :cond_d

    .line 1077
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/App_Bt;->popMsgSet(Z)V

    goto/16 :goto_0

    .line 1080
    :cond_d
    sget-boolean v20, Lcom/syu/bt/App_Bt;->bLinkNet:Z

    if-nez v20, :cond_e

    .line 1081
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v20

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_ai9"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1084
    :cond_e
    const-string v20, "AIQR2"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "  000  Set_Btn_AI iRunnAIQR_BTN = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v22, Lcom/syu/bt/page/Page_Set;->iRunnAIQR_BTN:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const/16 v21, 0x1

    sget-object v22, Lcom/syu/bt/page/Page_Set;->mRunnAIQR_BTN:Ljava/lang/Runnable;

    sget-object v20, Lcom/syu/bt/App_Bt;->aiStrQR:Ljava/lang/String;

    if-nez v20, :cond_10

    const/16 v20, 0xbb8

    :goto_4
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 1086
    sget-boolean v20, Lcom/syu/bt/page/Page_Set;->iRunnAIQR_BTN:Z

    if-eqz v20, :cond_0

    .line 1087
    const/16 v20, 0x0

    sput-boolean v20, Lcom/syu/bt/page/Page_Set;->iRunnAIQR_BTN:Z

    .line 1088
    const-string v20, "AIQR2"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "  111  Set_Btn_AI iRunnAIQR_BTN = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v22, Lcom/syu/bt/page/Page_Set;->iRunnAIQR_BTN:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    sget-object v20, Lcom/syu/bt/App_Bt;->aiStrQR:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lcom/syu/bt/App_Bt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 1090
    const-string v20, "AIQR2"

    const-string v21, "  222 mRunnAIQR_BTN  \u83b7\u53d6\u4e8c\u7ef4\u7801 getQrCode "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v13, v0, [B

    .line 1092
    .local v13, "qr_code":[B
    const/16 v20, 0x0

    const/16 v21, 0x0

    aput-byte v21, v13, v20

    .line 1093
    const/4 v12, -0x1

    .line 1094
    .local v12, "qrCode":I
    invoke-static {}, Lcom/syu/Uvoice/UvoiceEcnr;->getInstance()Lcom/syu/Uvoice/UvoiceEcnr;

    invoke-static {v13}, Lcom/syu/Uvoice/UvoiceEcnr;->getQrCode2([B)I

    move-result v12

    .line 1095
    const-string v20, "AIQR2"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "  333 mRunnAIQR_BTN  \u83b7\u53d6\u4e8c\u7ef4\u7801 getQrCode  qrCode = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    if-nez v12, :cond_13

    .line 1097
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v13}, Ljava/lang/String;-><init>([B)V

    .line 1098
    .local v15, "str_qr":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1099
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v10, v0, :cond_11

    .line 1106
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/syu/bt/App_Bt;->aiStrQR:Ljava/lang/String;

    .line 1107
    const-string v20, "AIQR2"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "  444 mRunnAIQR_BTN aiStrQR qrCode ="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  aiStrQR = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/syu/bt/App_Bt;->aiStrQR:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    .end local v10    # "i":I
    .end local v12    # "qrCode":I
    .end local v13    # "qr_code":[B
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "str_qr":Ljava/lang/String;
    :cond_f
    :goto_6
    sget-object v20, Lcom/syu/bt/App_Bt;->aiStrQR:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lcom/syu/bt/App_Bt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1114
    sget-object v20, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual/range {v20 .. v20}, Lcom/syu/bt/Act_Bt;->showPopAIQR()V

    .line 1115
    const/16 v20, 0x0

    sput v20, Lcom/syu/bt/page/Page_Set;->iRunnAIQR:I

    .line 1116
    const-string v20, "AIQR3"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "  000  mRunnAIQR \u626b\u7801\u540e\u81ea\u52a8\u6fc0\u6d3b  iRunnAIQR = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v22, Lcom/syu/bt/page/Page_Set;->iRunnAIQR:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const/16 v20, 0x1

    sget-object v21, Lcom/syu/bt/page/Page_Set;->mRunnAIQR:Ljava/lang/Runnable;

    const-wide/16 v22, 0x2710

    invoke-static/range {v20 .. v23}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 1085
    :cond_10
    const/16 v20, 0x1f4

    goto/16 :goto_4

    .line 1100
    .restart local v10    # "i":I
    .restart local v12    # "qrCode":I
    .restart local v13    # "qr_code":[B
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "str_qr":Ljava/lang/String;
    :cond_11
    invoke-virtual {v15, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1101
    .local v5, "c":C
    invoke-virtual {v15, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1102
    .local v4, "b":I
    if-eqz v4, :cond_12

    .line 1103
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1099
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1110
    .end local v4    # "b":I
    .end local v5    # "c":C
    .end local v10    # "i":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "str_qr":Ljava/lang/String;
    :cond_13
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v22, v0

    const-string v23, "bt_ai4"

    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " Code : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_6

    .line 1119
    .end local v12    # "qrCode":I
    .end local v13    # "qr_code":[B
    :cond_14
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v20

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_ai4"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1125
    :sswitch_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Set;->isClickReSet:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 1128
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/syu/bt/util/BTUtil;->isExistFile()Z

    move-result v20

    if-eqz v20, :cond_15

    .line 1129
    sget-object v20, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    const/16 v21, 0x7

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v22, v0

    const-string v23, "bt_update_config"

    invoke-virtual/range {v22 .. v23}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/syu/bt/Act_Bt;->popDeleteContacts(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1131
    :cond_15
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v20

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_update_nofile"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v16, p1

    .line 1136
    check-cast v16, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    .line 1137
    .local v16, "switchButton":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    invoke-virtual/range {v16 .. v16}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_16

    .line 1138
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/syu/app/ipc/Bt_IpcObj;->setAutoAnswer(Z)V

    goto/16 :goto_0

    .line 1140
    :cond_16
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/syu/app/ipc/Bt_IpcObj;->setAutoAnswer(Z)V

    goto/16 :goto_0

    .line 1144
    .end local v16    # "switchButton":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    :sswitch_f
    const-string v20, "gdy"

    const-string v21, " 00  Set_Switch_CarplayAutoLink Set_Switch_CarplayAutoLink  "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, p1

    .line 1145
    check-cast v16, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    .line 1146
    .restart local v16    # "switchButton":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    invoke-virtual/range {v16 .. v16}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_17

    .line 1147
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/syu/app/ipc/Bt_IpcObj;->setCarLinkAutoConnect(Z)V

    goto/16 :goto_0

    .line 1149
    :cond_17
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/syu/app/ipc/Bt_IpcObj;->setCarLinkAutoConnect(Z)V

    goto/16 :goto_0

    .line 1153
    .end local v16    # "switchButton":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    :sswitch_10
    const-string v20, "gdy"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, " 00 Set_Switch_BtMic set mic set_mic = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->check_BtMic:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->isChecked()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->check_BtMic:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_18

    .line 1155
    const-string v20, "gdy"

    const-string v21, " 22 Set_Switch_BtMic set mic external  "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const-string v20, "persist.btmic.switch"

    const-string v21, "external"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->check_BtMic:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setChecked(Z)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tv_BtMic:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tv_BtMic:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v20, v0

    const-string v21, "external"

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1162
    :cond_18
    const-string v20, "gdy"

    const-string v21, " 11 Set_Switch_BtMic set mic internal  "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const-string v20, "persist.btmic.switch"

    const-string v21, "internal"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->check_BtMic:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setChecked(Z)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tv_BtMic:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tv_BtMic:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v20, v0

    const-string v21, "internal"

    invoke-virtual/range {v20 .. v21}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1171
    :sswitch_11
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->setAutoAnswer(Z)V

    goto/16 :goto_0

    .line 1174
    :sswitch_12
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->setAutoAnswer(Z)V

    goto/16 :goto_0

    .line 1177
    :sswitch_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/page/Page_Set;->isAutoAnswer:Z

    move/from16 v20, v0

    if-eqz v20, :cond_19

    .line 1178
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/syu/app/ipc/Bt_IpcObj;->setAutoAnswer(Z)V

    goto/16 :goto_0

    .line 1180
    :cond_19
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/syu/app/ipc/Bt_IpcObj;->setAutoAnswer(Z)V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v16, p1

    .line 1184
    check-cast v16, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    .line 1185
    .restart local v16    # "switchButton":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    invoke-virtual/range {v16 .. v16}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 1186
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/syu/app/ipc/Bt_IpcObj;->setBtSwitch(Z)V

    .line 1187
    sget-object v20, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_opening"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1189
    :cond_1a
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/syu/app/ipc/Bt_IpcObj;->setBtSwitch(Z)V

    .line 1190
    sget-object v20, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_closing"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1203
    .end local v16    # "switchButton":Lcom/lsec/core/frame/ctrl/JSwitchButton;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1205
    .local v17, "temp":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1b

    .line 1206
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v21, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 v0, v11, -0x2920

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1210
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1208
    :cond_1b
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 v0, v11, -0x2920

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_7

    .line 1214
    .end local v17    # "temp":Ljava/lang/String;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1217
    .restart local v17    # "temp":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1218
    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1221
    :catch_0
    move-exception v6

    .line 1222
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1233
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v17    # "temp":Ljava/lang/String;
    :sswitch_17
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1236
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    goto/16 :goto_0

    .line 1239
    :sswitch_18
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1242
    sget-boolean v20, Lcom/syu/bt/App_Bt;->bSms_Ctrl:Z

    if-eqz v20, :cond_1c

    .line 1243
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->setSmsFunction(Z)V

    .line 1244
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/App_Bt;->popPhoneSMS(Z)V

    goto/16 :goto_0

    .line 1246
    :cond_1c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->setSmsFunction(Z)V

    goto/16 :goto_0

    .line 1250
    :sswitch_19
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    goto/16 :goto_0

    .line 1253
    :sswitch_1a
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/App_Bt;->popPhoneMicSet(Z)V

    goto/16 :goto_0

    .line 1256
    :sswitch_1b
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/App_Bt;->popBtAvMicSet(Z)V

    goto/16 :goto_0

    .line 1259
    :sswitch_1c
    sget-boolean v20, Lcom/syu/bt/App_Bt;->bBtPowerOnOff:Z

    if-eqz v20, :cond_1f

    .line 1260
    sget-boolean v20, Lcom/syu/bt/App_Bt;->bBtInitFlag:Z

    if-eqz v20, :cond_1e

    .line 1261
    sget v20, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1d

    .line 1262
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    .line 1263
    :cond_1d
    sget-object v20, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 1264
    sget-object v20, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->resetList_BtSet(Ljava/util/List;)V

    .line 1265
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->startDiscover()V

    .line 1266
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->showSetDiscover(Z)V

    goto/16 :goto_0

    .line 1268
    :cond_1e
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v20

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_btinit"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 1269
    const/16 v20, 0x0

    new-instance v21, Lcom/syu/bt/page/Page_Set$18;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/syu/bt/page/Page_Set$18;-><init>(Lcom/syu/bt/page/Page_Set;)V

    .line 1274
    const-wide/16 v22, 0xbb8

    .line 1269
    invoke-static/range {v20 .. v23}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 1277
    :cond_1f
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v20

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v21, v0

    const-string v22, "bt_opendevice"

    invoke-virtual/range {v21 .. v22}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1281
    :sswitch_1d
    sget-object v20, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual/range {v20 .. v20}, Lcom/syu/bt/Act_Bt;->Func_Back()Z

    goto/16 :goto_0

    .line 919
    nop

    :sswitch_data_0
    .sparse-switch
        0x27af -> :sswitch_0
        0x27b0 -> :sswitch_17
        0x2873 -> :sswitch_11
        0x2874 -> :sswitch_12
        0x2875 -> :sswitch_13
        0x2876 -> :sswitch_1
        0x2878 -> :sswitch_2
        0x287a -> :sswitch_3
        0x2880 -> :sswitch_18
        0x2884 -> :sswitch_7
        0x2885 -> :sswitch_a
        0x2887 -> :sswitch_d
        0x2889 -> :sswitch_4
        0x288a -> :sswitch_5
        0x288b -> :sswitch_6
        0x288c -> :sswitch_e
        0x2891 -> :sswitch_14
        0x2892 -> :sswitch_19
        0x2894 -> :sswitch_c
        0x2895 -> :sswitch_b
        0x28a5 -> :sswitch_10
        0x28b1 -> :sswitch_1a
        0x28b2 -> :sswitch_1b
        0x28c1 -> :sswitch_8
        0x28c6 -> :sswitch_9
        0x28cd -> :sswitch_1c
        0x28d1 -> :sswitch_f
        0x2920 -> :sswitch_15
        0x2921 -> :sswitch_15
        0x2922 -> :sswitch_15
        0x2923 -> :sswitch_15
        0x2924 -> :sswitch_15
        0x2925 -> :sswitch_15
        0x2926 -> :sswitch_15
        0x2927 -> :sswitch_15
        0x2928 -> :sswitch_15
        0x2929 -> :sswitch_15
        0x292a -> :sswitch_16
        0x2937 -> :sswitch_1d
    .end sparse-switch

    .line 937
    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch

    .line 986
    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_1
    .end packed-switch
.end method

.method public ResponseLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 900
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 907
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 902
    :pswitch_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x292a
        :pswitch_0
    .end packed-switch
.end method

.method public TouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1486
    .local v0, "iAction":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1487
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-boolean v1, v1, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v1, :cond_0

    .line 1488
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    .line 1490
    :cond_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-boolean v1, v1, Lcom/syu/bt/App_Bt;->bPopPhoneMicSet:Z

    if-eqz v1, :cond_1

    .line 1491
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/syu/bt/App_Bt;->popPhoneMicSet(Z)V

    .line 1493
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-boolean v1, v1, Lcom/syu/bt/App_Bt;->bPopBtAvMicSet:Z

    if-eqz v1, :cond_2

    .line 1494
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/syu/bt/App_Bt;->popBtAvMicSet(Z)V

    .line 1496
    :cond_2
    return-void
.end method

.method public dismissPopBtRing()V
    .locals 5

    .prologue
    .line 1677
    sget-object v1, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    .line 1678
    const/16 v2, 0x272b

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1679
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1680
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1681
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1683
    :cond_0
    return-void
.end method

.method public getChoiceName(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 5
    .param p1, "mChoiceAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x28ef

    .line 1506
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 1520
    :goto_0
    return-object v0

    .line 1509
    :cond_0
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1510
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v2

    .line 1520
    goto :goto_0

    .line 1510
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1512
    .local v0, "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 1511
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1512
    if-nez v1, :cond_1

    .line 1514
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1515
    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public hideLoadAnim()V
    .locals 2

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 1719
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    invoke-virtual {v0}, Lcom/lsec/core/util/Runnable_AnimDrawable;->stopRun()V

    .line 1720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Set;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mBtnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_1

    .line 1724
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mBtnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1726
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mProgLoad:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1727
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mProgLoad:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1728
    :cond_2
    return-void
.end method

.method public init()V
    .locals 21

    .prologue
    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x275e

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v15

    .line 361
    .local v15, "view_40":Landroid/view/View;
    if-eqz v15, :cond_0

    .line 362
    sget v16, Lcom/syu/bt/App_Bt;->iDensity:I

    const/16 v17, 0xf0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_27

    const/16 v16, 0x0

    :goto_0
    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 366
    const/16 v17, 0x288d

    .line 365
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->setSingleLine()V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const/16 v17, 0x10

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setEms(I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    move-object/from16 v16, v0

    .line 374
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Landroid/text/InputFilter$LengthFilter;

    .line 375
    const/16 v20, 0x10

    invoke-direct/range {v19 .. v20}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v19, v17, v18

    .line 374
    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    move-object/from16 v16, v0

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mFocus:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const/high16 v17, 0x80000

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setInputType(I)V

    .line 381
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x288e

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mViewPin:Landroid/view/View;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mViewPin:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 383
    const-string v16, "890A"

    sget-object v17, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "6318"

    sget-object v17, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "6319"

    sget-object v17, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "6321"

    sget-object v17, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_28

    .line 384
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mViewPin:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 392
    const/16 v17, 0x288f

    .line 391
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 394
    const/16 v17, 0x28d2

    .line 393
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v14

    .line 395
    .local v14, "viewCarplayAuto":Landroid/view/View;
    sget v16, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v17, 0x70

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 396
    sget v16, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v17, 0x8c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2a

    .line 397
    :cond_4
    if-eqz v14, :cond_5

    .line 398
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 401
    const/16 v17, 0x28d1

    .line 400
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mButtonCarplayAuto:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 403
    const/16 v17, 0x292e

    .line 402
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mButtonCarplayAuto2:Lcom/syu/bt/ctrl/JSwitchButon2;

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 405
    const/16 v17, 0x292f

    .line 404
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mTextCarplayAuto:Lcom/lsec/core/frame/ctrl/JText;

    .line 411
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    move-object/from16 v16, v0

    sget-object v17, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 413
    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyPin()Ljava/lang/String;

    move-result-object v8

    .line 414
    .local v8, "strDiyPin":Ljava/lang/String;
    sget-object v16, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 415
    invoke-static {v8}, Lcom/syu/app/ipc/Bt_IpcObj;->setDevPin(Ljava/lang/String;)V

    .line 417
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setEms(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Landroid/text/InputFilter$LengthFilter;

    .line 420
    const/16 v20, 0x4

    invoke-direct/range {v19 .. v20}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v19, v17, v18

    .line 419
    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->setSingleLine()V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setInputType(I)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mFocus:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 426
    .end local v8    # "strDiyPin":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 427
    const/16 v17, 0x28a5

    .line 426
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JSwitchButton;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->check_BtMic:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 429
    const/16 v17, 0x28a6

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    .line 428
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->tv_BtMic:Lcom/lsec/core/frame/ctrl/JText;

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x28a8

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->View_Color:Landroid/view/View;

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 434
    const/16 v17, 0x292b

    .line 433
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevPin()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 439
    const/16 v17, 0x28ad

    .line 438
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->tvDevName:Lcom/lsec/core/frame/ctrl/JText;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvDevName:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvDevName:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x28af

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->tvPin:Lcom/lsec/core/frame/ctrl/JText;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvPin:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevPin()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 448
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 449
    const/16 v17, 0x2768

    .line 448
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->tvPhoneState:Lcom/lsec/core/frame/ctrl/JText;

    .line 450
    sget-object v16, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v17, 0x9

    aget v10, v16, v17

    .line 451
    .local v10, "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvPhoneState:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    .line 452
    if-ltz v10, :cond_c

    const/16 v16, 0x6

    move/from16 v0, v16

    if-gt v10, v0, :cond_c

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvPhoneState:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v17, v0

    .line 454
    sget-object v18, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v18, v18, v10

    invoke-virtual/range {v17 .. v18}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 453
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 458
    const/16 v17, 0x2772

    .line 457
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->tvLinkName:Lcom/lsec/core/frame/ctrl/JText;

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvLinkName:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvLinkName:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v16, v0

    sget-object v17, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 463
    const/16 v17, 0x28a9

    .line 462
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mSB2:Lcom/syu/bt/ctrl/JSwitchButon2;

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mSB2:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mSB2:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v16, v0

    new-instance v17, Lcom/syu/bt/page/Page_Set$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/syu/bt/page/Page_Set$8;-><init>(Lcom/syu/bt/page/Page_Set;)V

    invoke-virtual/range {v16 .. v17}, Lcom/syu/bt/ctrl/JSwitchButon2;->setOnSwitchStateLisenter(Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;)V

    .line 478
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mButtonCarplayAuto2:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mButtonCarplayAuto2:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v16, v0

    .line 480
    new-instance v17, Lcom/syu/bt/page/Page_Set$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/syu/bt/page/Page_Set$9;-><init>(Lcom/syu/bt/page/Page_Set;)V

    invoke-virtual/range {v16 .. v17}, Lcom/syu/bt/ctrl/JSwitchButon2;->setOnSwitchStateLisenter(Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;)V

    .line 498
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x2930

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/syu/bt/ctrl/JSwitchButon2;

    sput-object v16, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG2:Lcom/syu/bt/ctrl/JSwitchButon2;

    .line 499
    sget-object v16, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG2:Lcom/syu/bt/ctrl/JSwitchButon2;

    if-eqz v16, :cond_10

    .line 500
    sget-object v16, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG2:Lcom/syu/bt/ctrl/JSwitchButon2;

    new-instance v17, Lcom/syu/bt/page/Page_Set$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/syu/bt/page/Page_Set$10;-><init>(Lcom/syu/bt/page/Page_Set;)V

    invoke-virtual/range {v16 .. v17}, Lcom/syu/bt/ctrl/JSwitchButon2;->setOnSwitchStateLisenter(Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;)V

    .line 519
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 520
    const/16 v17, 0x292c

    .line 519
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mSB2:Lcom/syu/bt/ctrl/JSwitchButon2;

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mSB2:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mSB2:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v16, v0

    new-instance v17, Lcom/syu/bt/page/Page_Set$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/syu/bt/page/Page_Set$11;-><init>(Lcom/syu/bt/page/Page_Set;)V

    invoke-virtual/range {v16 .. v17}, Lcom/syu/bt/ctrl/JSwitchButon2;->setOnSwitchStateLisenter(Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;)V

    .line 537
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 538
    const/16 v17, 0x287f

    .line 537
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mSMS2:Lcom/syu/bt/ctrl/JSwitchButon2;

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mSMS2:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v16, v0

    if-eqz v16, :cond_12

    .line 540
    const-string v16, "sms"

    const-string v17, " 00 mSB2 != null   "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mSMS2:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v16, v0

    new-instance v17, Lcom/syu/bt/page/Page_Set$12;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/syu/bt/page/Page_Set$12;-><init>(Lcom/syu/bt/page/Page_Set;)V

    invoke-virtual/range {v16 .. v17}, Lcom/syu/bt/ctrl/JSwitchButon2;->setOnSwitchStateLisenter(Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;)V

    .line 557
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 558
    const/16 v17, 0x292d

    .line 557
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mBTOnOff:Lcom/syu/bt/ctrl/JSwitchButon2;

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mBTOnOff:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v16, v0

    if-eqz v16, :cond_13

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mBTOnOff:Lcom/syu/bt/ctrl/JSwitchButon2;

    move-object/from16 v16, v0

    new-instance v17, Lcom/syu/bt/page/Page_Set$13;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/syu/bt/page/Page_Set$13;-><init>(Lcom/syu/bt/page/Page_Set;)V

    invoke-virtual/range {v16 .. v17}, Lcom/syu/bt/ctrl/JSwitchButon2;->setOnSwitchStateLisenter(Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;)V

    .line 577
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 578
    const/16 v17, 0x28ac

    .line 577
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->tvRingSet:Lcom/lsec/core/frame/ctrl/JText;

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 580
    const/16 v17, 0x28b8

    .line 579
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->tvPhoneMicSet:Lcom/lsec/core/frame/ctrl/JText;

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 582
    const/16 v17, 0x28b9

    .line 581
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->tvBtAvMicSet:Lcom/lsec/core/frame/ctrl/JText;

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 584
    const/16 v17, 0x28cd

    .line 583
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JButton;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mBtnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 586
    const/16 v17, 0x2893

    .line 585
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->tvRingName:Lcom/lsec/core/frame/ctrl/JText;

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x28a7

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->tvColor:Lcom/lsec/core/frame/ctrl/JText;

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x2896

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    sput-object v16, Lcom/syu/bt/page/Page_Set;->tvSetTxtAI:Lcom/lsec/core/frame/ctrl/JText;

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x28a3

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/syu/bt/ctrl/JSwitchButon2;

    sput-object v16, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG:Lcom/syu/bt/ctrl/JSwitchButon2;

    .line 591
    sget-object v16, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG:Lcom/syu/bt/ctrl/JSwitchButon2;

    if-eqz v16, :cond_14

    .line 592
    sget-object v16, Lcom/syu/bt/page/Page_Set;->mSet_Switch_AI_KG:Lcom/syu/bt/ctrl/JSwitchButon2;

    new-instance v17, Lcom/syu/bt/page/Page_Set$14;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/syu/bt/page/Page_Set$14;-><init>(Lcom/syu/bt/page/Page_Set;)V

    invoke-virtual/range {v16 .. v17}, Lcom/syu/bt/ctrl/JSwitchButon2;->setOnSwitchStateLisenter(Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;)V

    .line 604
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x289f

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    sput-object v16, Lcom/syu/bt/page/Page_Set;->tvSetTxtAI_KG:Lcom/lsec/core/frame/ctrl/JText;

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x289e

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    sput-object v16, Lcom/syu/bt/page/Page_Set;->tvSetTxtAIKG:Lcom/lsec/core/frame/ctrl/JText;

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x28a2

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    sput-object v16, Lcom/syu/bt/page/Page_Set;->tvSetTxtAIKG2:Lcom/lsec/core/frame/ctrl/JText;

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x28a0

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    sput-object v16, Lcom/syu/bt/page/Page_Set;->tvSetTxtAI_KG2:Lcom/lsec/core/frame/ctrl/JText;

    .line 608
    sget-boolean v16, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-eqz v16, :cond_2b

    const-string v16, "persist.lsec.aecdelay"

    const/16 v17, -0x1

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    if-nez v16, :cond_2b

    const/16 v16, 0x1

    :goto_3
    sput-boolean v16, Lcom/syu/bt/App_Bt;->isAIOnOff:Z

    .line 610
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateAI()V

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 615
    const/16 v17, 0x28c2

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    .line 614
    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    sput-object v16, Lcom/syu/bt/page/Page_Set;->tvSetMsbc:Lcom/lsec/core/frame/ctrl/JText;

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 617
    const/16 v17, 0x28c7

    .line 616
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    sput-object v16, Lcom/syu/bt/page/Page_Set;->tvSetCodec:Lcom/lsec/core/frame/ctrl/JText;

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvColor:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v16, v0

    if-eqz v16, :cond_15

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->tvColor:Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    move-object/from16 v18, v0

    .line 621
    sget-boolean v16, Lcom/syu/bt/App_Bt;->color_show:Z

    if-eqz v16, :cond_2c

    const-string v16, "bt_opened"

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 620
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 622
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 623
    const/16 v17, 0x287a

    .line 622
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JButton;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mBtReset:Lcom/lsec/core/frame/ctrl/JButton;

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 625
    const/16 v17, 0x287b

    .line 624
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lsec/core/frame/ctrl/JText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->tvBtReset:Lcom/lsec/core/frame/ctrl/JText;

    .line 628
    const-string v16, "ro.build.fytmanufacturer"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 630
    .local v4, "id_facturer":I
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 631
    const/16 v17, 0x28ba

    .line 630
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    .line 632
    .local v9, "tvBtUpdate":Landroid/view/View;
    sget v16, Lcom/syu/bt/App_Bt;->mBtType:I

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2d

    sget v16, Lcom/syu/bt/App_Bt;->mBtType:I

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2d

    sget v16, Lcom/syu/bt/App_Bt;->mBtType:I

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2d

    .line 633
    if-eqz v9, :cond_16

    .line 634
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 641
    :cond_16
    :goto_5
    const/16 v16, 0x35

    move/from16 v0, v16

    if-ne v4, v0, :cond_17

    .line 642
    if-eqz v9, :cond_17

    .line 643
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 645
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x28bb

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    sput-object v16, Lcom/syu/bt/page/Page_Set;->tvBtAi:Landroid/view/View;

    .line 646
    sget-object v16, Lcom/syu/bt/page/Page_Set;->tvBtAi:Landroid/view/View;

    if-eqz v16, :cond_18

    .line 647
    const-string v16, "gdy11"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, " ** 55 Page_set ***  mBtType = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v18, Lcom/syu/bt/App_Bt;->mBtType:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " isAIType = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/syu/bt/App_Bt;->isAIType:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    sget v16, Lcom/syu/bt/App_Bt;->isAIType:I

    if-ltz v16, :cond_2f

    .line 649
    sget-object v16, Lcom/syu/bt/page/Page_Set;->tvBtAi:Landroid/view/View;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 656
    :cond_18
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x28bc

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    sput-object v16, Lcom/syu/bt/page/Page_Set;->tvBtAi2:Landroid/view/View;

    .line 657
    sget-object v16, Lcom/syu/bt/page/Page_Set;->tvBtAi2:Landroid/view/View;

    if-eqz v16, :cond_1b

    .line 658
    const-string v16, "ai"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, " 44 Page_Set  tvBtAi2 isAIGT_Aiuvoice = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v18, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  App_Bt.mRoPlatForm = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/syu/bt/App_Bt;->mRoPlatForm:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget v16, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_19

    sget v16, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    const/16 v17, 0x751

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_30

    :cond_19
    sget-object v16, Lcom/syu/bt/App_Bt;->mRoPlatForm:Ljava/lang/String;

    const-string v17, "825"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1a

    sget-object v16, Lcom/syu/bt/App_Bt;->mRoPlatForm:Ljava/lang/String;

    const-string v17, "6316"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_30

    .line 660
    :cond_1a
    sget-object v16, Lcom/syu/bt/page/Page_Set;->tvBtAi2:Landroid/view/View;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 667
    :cond_1b
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x289d

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    sput-object v16, Lcom/syu/bt/page/Page_Set;->vBtAiKG2:Landroid/view/View;

    .line 668
    sget-object v16, Lcom/syu/bt/page/Page_Set;->vBtAiKG2:Landroid/view/View;

    if-eqz v16, :cond_1c

    .line 669
    const-string v16, "ai"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, " 33 Page_Set  showAIGT isAIGT_Aiuvoice = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v18, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  0xffff = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0xffff

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    sget v16, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    const v17, 0xffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_31

    .line 671
    sget-object v16, Lcom/syu/bt/page/Page_Set;->vBtAiKG2:Landroid/view/View;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 677
    :cond_1c
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x289c

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    sput-object v16, Lcom/syu/bt/page/Page_Set;->vBtAiKG:Landroid/view/View;

    .line 678
    sget-object v16, Lcom/syu/bt/page/Page_Set;->vBtAiKG:Landroid/view/View;

    if-eqz v16, :cond_1d

    .line 679
    sget-boolean v16, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-eqz v16, :cond_32

    .line 680
    sget-object v16, Lcom/syu/bt/page/Page_Set;->vBtAiKG:Landroid/view/View;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 686
    :cond_1d
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    const/16 v17, 0x28bd

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mProgLoad:Landroid/view/View;

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mProgLoad:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1e

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mProgLoad:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/app/MyUiItem;

    .line 689
    .local v5, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v5}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v7

    .line 690
    .local v7, "str":[Ljava/lang/String;
    if-eqz v7, :cond_1e

    array-length v0, v7

    move/from16 v16, v0

    if-lez v16, :cond_1e

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 692
    const/16 v17, 0x0

    aget-object v17, v7, v17

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v19, v0

    .line 692
    invoke-virtual/range {v16 .. v19}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/AnimationDrawable;

    .line 691
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/page/Page_Set;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 696
    .end local v5    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v7    # "str":[Ljava/lang/String;
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 697
    const/16 v17, 0x28be

    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v11

    .line 698
    .local v11, "view":Landroid/view/View;
    if-eqz v11, :cond_21

    .line 699
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7731()Z

    move-result v16

    if-nez v16, :cond_1f

    sget v16, Lcom/syu/bt/App_Bt;->mBtType:I

    if-nez v16, :cond_33

    .line 700
    :cond_1f
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 707
    :goto_a
    const/16 v16, 0x35

    move/from16 v0, v16

    if-ne v4, v0, :cond_20

    .line 708
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 710
    :cond_20
    sget v16, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v17, 0x8b

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_21

    .line 711
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 713
    :cond_21
    const-string v16, "pop"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, " App_Bt.mBtType = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v18, Lcom/syu/bt/App_Bt;->mBtType:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mIdPlatForm = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 714
    sget v18, Lcom/lsec/core/frame/app/MyApplication;->mIdPlatForm:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mStrPlatForm = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 715
    sget-object v18, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 713
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 717
    const/16 v17, 0x28c0

    .line 716
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v12

    .line 718
    .local v12, "view1":Landroid/view/View;
    if-eqz v12, :cond_23

    .line 719
    sget v16, Lcom/syu/bt/App_Bt;->mBtType:I

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    .line 720
    const-string v16, "6318"

    sget-object v17, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_22

    const-string v16, "6321"

    sget-object v17, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_22

    const-string v16, "6319"

    sget-object v17, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_22

    .line 721
    const-string v16, "890A"

    sget-object v17, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_35

    .line 722
    :cond_22
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 728
    :cond_23
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 729
    const/16 v17, 0x28c5

    .line 728
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v13

    .line 730
    .local v13, "view2":Landroid/view/View;
    if-eqz v13, :cond_25

    .line 732
    sget v16, Lcom/syu/bt/App_Bt;->mBtType:I

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_37

    const-string v16, "6318"

    sget-object v17, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_24

    const-string v16, "6321"

    sget-object v17, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_24

    const-string v16, "6319"

    sget-object v17, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_24

    .line 733
    const-string v16, "890A"

    sget-object v17, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_37

    .line 734
    :cond_24
    const-string v16, "persist.blinkbt.baudrate"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 735
    .local v2, "baudrate":I
    const-string v16, "pop"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, " **  Set_View_Codec   baudrate = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const v16, 0x7a120

    move/from16 v0, v16

    if-ne v2, v0, :cond_36

    .line 737
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 746
    .end local v2    # "baudrate":I
    :cond_25
    :goto_c
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v16

    if-eqz v16, :cond_26

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    .line 748
    const/16 v17, 0x28bf

    .line 747
    invoke-virtual/range {v16 .. v17}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 749
    .local v6, "lay":Landroid/widget/LinearLayout;
    if-eqz v6, :cond_26

    .line 750
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 751
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 755
    .end local v6    # "lay":Landroid/widget/LinearLayout;
    :cond_26
    sget v16, Lcom/syu/bt/App_Bt;->color:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->setButtonColor(I)V

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->initTypeface()V

    .line 757
    sget v16, Lcom/syu/bt/App_Bt;->mColorType:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->setDayOrNight(I)V

    .line 758
    return-void

    .line 363
    .end local v4    # "id_facturer":I
    .end local v9    # "tvBtUpdate":Landroid/view/View;
    .end local v10    # "value":I
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "view1":Landroid/view/View;
    .end local v13    # "view2":Landroid/view/View;
    .end local v14    # "viewCarplayAuto":Landroid/view/View;
    :cond_27
    const/16 v16, 0x8

    goto/16 :goto_0

    .line 386
    :cond_28
    const-string v16, "persist.btpair.ssp"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 387
    .local v3, "hide_pin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/page/Page_Set;->mViewPin:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_29

    const/16 v16, 0x8

    :goto_d
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_29
    const/16 v16, 0x0

    goto :goto_d

    .line 407
    .end local v3    # "hide_pin":I
    .restart local v14    # "viewCarplayAuto":Landroid/view/View;
    :cond_2a
    if-eqz v14, :cond_6

    .line 408
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 608
    .restart local v10    # "value":I
    :cond_2b
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 621
    :cond_2c
    const-string v16, "bt_closed"

    goto/16 :goto_4

    .line 636
    .restart local v4    # "id_facturer":I
    .restart local v9    # "tvBtUpdate":Landroid/view/View;
    :cond_2d
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v16

    if-eqz v16, :cond_2e

    sget v16, Lcom/syu/bt/App_Bt;->mBtType:I

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2e

    .line 637
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v16

    const-string v17, "bc5update.dfu"

    invoke-virtual/range {v16 .. v17}, Lcom/syu/bt/util/BTUtil;->setFileName(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 639
    :cond_2e
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v16

    const-string v17, "BT.bin"

    invoke-virtual/range {v16 .. v17}, Lcom/syu/bt/util/BTUtil;->setFileName(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 651
    :cond_2f
    sget-object v16, Lcom/syu/bt/page/Page_Set;->tvBtAi:Landroid/view/View;

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 663
    :cond_30
    sget-object v16, Lcom/syu/bt/page/Page_Set;->tvBtAi2:Landroid/view/View;

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 674
    :cond_31
    sget-object v16, Lcom/syu/bt/page/Page_Set;->vBtAiKG2:Landroid/view/View;

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 683
    :cond_32
    sget-object v16, Lcom/syu/bt/page/Page_Set;->vBtAiKG:Landroid/view/View;

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 702
    .restart local v11    # "view":Landroid/view/View;
    :cond_33
    sget v16, Lcom/syu/bt/App_Bt;->mBtType:I

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_34

    .line 703
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 705
    :cond_34
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 726
    .restart local v12    # "view1":Landroid/view/View;
    :cond_35
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 739
    .restart local v2    # "baudrate":I
    .restart local v13    # "view2":Landroid/view/View;
    :cond_36
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 744
    .end local v2    # "baudrate":I
    :cond_37
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c
.end method

.method public initTypeface()V
    .locals 15

    .prologue
    .line 1945
    sget-object v13, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v14, "TZY_NEW"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 2052
    :cond_0
    :goto_0
    return-void

    .line 1948
    :cond_1
    iget-object v13, p0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    if-eqz v13, :cond_2

    .line 1949
    iget-object v13, p0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    .line 1950
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v14

    iget-object v14, v14, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v14, v14, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    .line 1949
    invoke-static {v14}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1953
    :cond_2
    iget-object v13, p0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    if-eqz v13, :cond_3

    .line 1954
    iget-object v13, p0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    .line 1955
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v14

    iget-object v14, v14, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v14, v14, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    .line 1954
    invoke-static {v14}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1958
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 1959
    const/16 v14, 0x2890

    .line 1958
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/ctrl/JText;

    .line 1960
    .local v6, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v6, :cond_4

    .line 1961
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v13, v13, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1964
    :cond_4
    iget-object v13, p0, Lcom/syu/bt/page/Page_Set;->tvRingName:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v13, :cond_5

    .line 1965
    iget-object v13, p0, Lcom/syu/bt/page/Page_Set;->tvRingName:Lcom/lsec/core/frame/ctrl/JText;

    .line 1966
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v14

    iget-object v14, v14, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v14, v14, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    .line 1965
    invoke-static {v14}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1969
    :cond_5
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 1970
    const/16 v14, 0x2876

    .line 1969
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1971
    .local v2, "name":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v2, :cond_6

    .line 1972
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v13, v13, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1975
    :cond_6
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 1976
    const/16 v14, 0x2878

    .line 1975
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1977
    .local v3, "pin":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v3, :cond_7

    .line 1978
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v13, v13, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1981
    :cond_7
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 1982
    const/16 v14, 0x2884

    .line 1981
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1983
    .local v4, "ring":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v4, :cond_8

    .line 1984
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v13, v13, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1987
    :cond_8
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 1988
    const/16 v14, 0x28c1

    .line 1987
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1989
    .local v1, "Msbc":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_9

    .line 1990
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v13, v13, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1992
    :cond_9
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 1993
    const/16 v14, 0x28c6

    .line 1992
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1994
    .local v0, "Codec":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_a

    .line 1995
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v13, v13, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2000
    :cond_a
    iget-object v13, p0, Lcom/syu/bt/page/Page_Set;->mBtReset:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v13, :cond_b

    .line 2001
    iget-object v13, p0, Lcom/syu/bt/page/Page_Set;->mBtReset:Lcom/lsec/core/frame/ctrl/JButton;

    .line 2002
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v14

    iget-object v14, v14, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v14, v14, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    .line 2001
    invoke-static {v14}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2005
    :cond_b
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 2006
    const/16 v14, 0x2877

    .line 2005
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/ctrl/JText;

    .line 2007
    .local v8, "txtNameOk":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v8, :cond_c

    .line 2009
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v13, v13, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    .line 2008
    invoke-static {v13}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2012
    :cond_c
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 2013
    const/16 v14, 0x2879

    .line 2012
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/ctrl/JText;

    .line 2014
    .local v9, "txtPinOk":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v9, :cond_d

    .line 2016
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v13, v13, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    .line 2015
    invoke-static {v13}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2019
    :cond_d
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 2020
    const/16 v14, 0x287c

    .line 2019
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lsec/core/frame/ctrl/JText;

    .line 2021
    .local v7, "txtAutoAnswer":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v7, :cond_e

    .line 2023
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v13, v13, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    .line 2022
    invoke-static {v13}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2026
    :cond_e
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 2027
    const/16 v14, 0x287d

    .line 2026
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/lsec/core/frame/ctrl/JText;

    .line 2028
    .local v11, "txtSMS":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v11, :cond_f

    .line 2029
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v13, v13, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2032
    :cond_f
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 2033
    const/16 v14, 0x2881

    .line 2032
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/lsec/core/frame/ctrl/JText;

    .line 2034
    .local v12, "txtSyncPhoneBook_Native":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v12, :cond_10

    .line 2036
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v13, v13, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    .line 2035
    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2039
    :cond_10
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 2040
    const/16 v14, 0x2886

    .line 2039
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lsec/core/frame/ctrl/JText;

    .line 2041
    .local v5, "ringName":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v5, :cond_11

    .line 2043
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v13, v13, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    .line 2042
    invoke-static {v13}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2046
    :cond_11
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v13

    .line 2047
    const/16 v14, 0x2888

    .line 2046
    invoke-virtual {v13, v14}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/lsec/core/frame/ctrl/JText;

    .line 2048
    .local v10, "txtReset":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v10, :cond_0

    .line 2050
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v13, v13, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    .line 2049
    invoke-static {v13}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0
.end method

.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Set;I[I[F[Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public onNotify_Sound(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify_Sound(Lcom/syu/bt/page/Page_Set;I[I[F[Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 347
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/syu/bt/App_Bt;->hideInput(Landroid/view/View;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 352
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/syu/bt/App_Bt;->hideInput(Landroid/view/View;)V

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->dismissPopBtRing()V

    .line 356
    return-void
.end method

.method public popBtRing()V
    .locals 5

    .prologue
    .line 1670
    sget-object v1, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    .line 1671
    const/16 v2, 0x272b

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1672
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1673
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1674
    :cond_0
    return-void
.end method

.method public popPinPwd()V
    .locals 5

    .prologue
    .line 1663
    sget-object v1, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    .line 1664
    const/16 v2, 0x2729

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1665
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1666
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1667
    :cond_0
    return-void
.end method

.method public popPwd()V
    .locals 5

    .prologue
    .line 1499
    sget-object v1, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    .line 1500
    const/16 v2, 0x2729

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPopDlg(ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 1501
    .local v0, "popDlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1502
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1503
    :cond_0
    return-void
.end method

.method public pressGridItem(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 0
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "pagePressed"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p3, "pressed"    # Z

    .prologue
    .line 1660
    return-void
.end method

.method public resetList_BtSet(Ljava/util/List;)V
    .locals 3
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
    .line 1524
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 1525
    const/16 v2, 0x28ec

    .line 1524
    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JGridView;

    .line 1526
    .local v0, "gridView":Lcom/lsec/core/frame/ctrl/JGridView;
    if-eqz v0, :cond_0

    .line 1527
    invoke-static {v0, p1}, Lcom/lsec/core/frame/app/MyApplication;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 1529
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 12

    .prologue
    const v11, 0xffff

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 200
    sget-object v5, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v5, v5, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v5, :cond_0

    .line 341
    :goto_0
    return-void

    .line 202
    :cond_0
    sget v5, Lcom/syu/bt/App_Bt;->mBtType:I

    const/4 v8, 0x7

    if-ne v5, v8, :cond_12

    const-string v5, "6318"

    sget-object v8, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 203
    new-instance v5, Lcom/syu/bt/page/Page_Set$6;

    invoke-direct {v5, p0}, Lcom/syu/bt/page/Page_Set$6;-><init>(Lcom/syu/bt/page/Page_Set;)V

    .line 215
    const-wide/16 v8, 0x32

    .line 203
    invoke-static {v6, v5, v8, v9}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 220
    :cond_1
    :goto_1
    const-string v5, "gdyy "

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 11 PageSet resume postRunnable_Ui iAI_GT = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/syu/bt/App_Bt;->iAI_GT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " App_Bt.bAI_JZ2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget v5, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-eq v5, v11, :cond_2

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    if-eqz v5, :cond_2

    .line 223
    const-string v5, "sys.blinkbt.ai.noise.code"

    invoke-static {v5, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    .line 224
    const-string v5, "persist.lsec.aecdelay"

    const/4 v8, -0x1

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_13

    move v5, v6

    :goto_2
    sput-boolean v5, Lcom/syu/bt/App_Bt;->isAIGT_OnOff:Z

    .line 225
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->showAIGT()V

    .line 226
    sget v5, Lcom/syu/bt/App_Bt;->isAIGT_Aiuvoice:I

    if-eqz v5, :cond_2

    .line 227
    new-instance v5, Lcom/syu/bt/page/Page_Set$7;

    invoke-direct {v5, p0}, Lcom/syu/bt/page/Page_Set$7;-><init>(Lcom/syu/bt/page/Page_Set;)V

    .line 233
    const-wide/16 v8, 0x7d0

    .line 227
    invoke-static {v6, v5, v8, v9}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 237
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_Set()V

    .line 238
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->recoverAppId()V

    .line 240
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvPhoneMicSet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_3

    .line 241
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvPhoneMicSet:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setFocusable(Z)V

    .line 242
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvPhoneMicSet:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setFocusableInTouchMode(Z)V

    .line 243
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvPhoneMicSet:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v5}, Lcom/lsec/core/frame/ctrl/JText;->requestFocus()Z

    .line 246
    :cond_3
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    if-eqz v5, :cond_4

    .line 247
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->clearFocus()V

    .line 251
    :cond_4
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    if-eqz v5, :cond_5

    .line 252
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 253
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevPin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_6

    .line 264
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->mTvPin:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevPin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_6
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvDevName:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_7

    .line 267
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvDevName:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_7
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvPin:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_8

    .line 270
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvPin:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevPin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_8
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->check_BtMic:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    if-eqz v5, :cond_9

    .line 273
    const-string v5, "persist.btmic.switch"

    .line 274
    const-string v6, "external"

    .line 273
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "set_mic":Ljava/lang/String;
    const-string v5, "gdy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, " resume set mic set_mic = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->check_BtMic:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    const-string v6, "external"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setChecked(Z)V

    .line 277
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tv_BtMic:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_9

    .line 278
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tv_BtMic:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v5, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .end local v2    # "set_mic":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvPhoneState:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_a

    .line 282
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v6, 0x9

    aget v4, v5, v6

    .line 283
    .local v4, "value":I
    if-ltz v4, :cond_a

    const/4 v5, 0x6

    if-gt v4, v5, :cond_a

    .line 284
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvPhoneState:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 285
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrStates:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v6, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .end local v4    # "value":I
    :cond_a
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvLinkName:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_b

    .line 289
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvLinkName:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :cond_b
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvRingSet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_c

    .line 293
    sget v5, Lcom/syu/bt/App_Bt;->iRingLevel:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Set;->strRingLevel:Ljava/lang/String;

    .line 294
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvRingSet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v6, p0, Lcom/syu/bt/page/Page_Set;->strRingLevel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_c
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->mBTOnOff:Lcom/syu/bt/ctrl/JSwitchButon2;

    if-eqz v5, :cond_d

    .line 298
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->mBTOnOff:Lcom/syu/bt/ctrl/JSwitchButon2;

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bBtPowerOnOff:Z

    invoke-virtual {v5, v6}, Lcom/syu/bt/ctrl/JSwitchButon2;->setSwitch(Z)V

    .line 301
    :cond_d
    const-string v5, "pop"

    const-string v6, " resume updateMsbc "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateMsbc()V

    .line 303
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateCodec()V

    .line 304
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvPhoneMicSet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_e

    .line 305
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->getSB()[I

    move-result-object v5

    sput-object v5, Lcom/syu/bt/App_Bt;->SB:[I

    .line 306
    sget-object v5, Lcom/syu/bt/App_Bt;->SB:[I

    aget v5, v5, v10

    sput v5, Lcom/syu/bt/App_Bt;->iPhoneMicSet:I

    .line 307
    sget v5, Lcom/syu/bt/App_Bt;->iPhoneMicSet:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Set;->strPhoneMicSet:Ljava/lang/String;

    .line 308
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvPhoneMicSet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v6, p0, Lcom/syu/bt/page/Page_Set;->strPhoneMicSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_e
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvBtAvMicSet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_f

    .line 312
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->getSB()[I

    move-result-object v5

    sput-object v5, Lcom/syu/bt/App_Bt;->SB:[I

    .line 313
    sget-object v5, Lcom/syu/bt/App_Bt;->SB:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    sput v5, Lcom/syu/bt/App_Bt;->iBtAvMicSet:I

    .line 314
    sget v5, Lcom/syu/bt/App_Bt;->iBtAvMicSet:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/syu/bt/page/Page_Set;->strBtAvMicSet:Ljava/lang/String;

    .line 315
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvBtAvMicSet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v6, p0, Lcom/syu/bt/page/Page_Set;->strBtAvMicSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_f
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvRingName:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_10

    .line 319
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    .line 320
    const-string v6, "name_ring"

    invoke-virtual {v5, v6}, Lcom/lsec/core/util/MySharePreference2;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "ringName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 322
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvRingName:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v5, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    .end local v1    # "ringName":Ljava/lang/String;
    :cond_10
    :goto_4
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bCarLinkAutoConnect:Z

    invoke-virtual {p0, v5}, Lcom/syu/bt/page/Page_Set;->updateCarplayAuto(Z)V

    .line 330
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bDelMenuFromBtAv:Z

    if-eqz v5, :cond_11

    .line 331
    sget-object v5, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v5, v5, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v5, v5, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v6, 0x2712

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    .line 332
    .local v0, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_11

    .line 333
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_11

    .line 334
    invoke-virtual {v0, v7}, Lcom/lsec/core/frame/ctrl/JPage;->setVisibility(I)V

    .line 337
    .end local v0    # "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_11
    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/syu/bt/page/Page_Set;->resetList_BtSet(Ljava/util/List;)V

    .line 338
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    .line 339
    const-string v6, "ringtype"

    .line 338
    invoke-virtual {v5, v6, v10}, Lcom/lsec/core/util/MySharePreference2;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/syu/bt/page/Page_Set;->updateRingSelect(I)V

    .line 340
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bSms_Ctrl:Z

    invoke-virtual {p0, v5}, Lcom/syu/bt/page/Page_Set;->setSmsFunction(Z)V

    goto/16 :goto_0

    .line 217
    :cond_12
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bAI_GT:Z

    if-eqz v5, :cond_1

    .line 218
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateAIKG()V

    goto/16 :goto_1

    :cond_13
    move v5, v7

    .line 224
    goto/16 :goto_2

    .line 255
    :cond_14
    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyPin()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "strDiyPin":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 257
    invoke-static {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->setDevPin(Ljava/lang/String;)V

    .line 258
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->mEditPin:Landroid/widget/EditText;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevPin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 324
    .end local v3    # "strDiyPin":Ljava/lang/String;
    .restart local v1    # "ringName":Ljava/lang/String;
    :cond_15
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->tvRingName:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 325
    const-string v8, "bt_ring_none"

    invoke-virtual {v6, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 324
    invoke-virtual {v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public setAutoAnswer(Z)V
    .locals 2
    .param p1, "bAuto"    # Z

    .prologue
    .line 1401
    if-eqz p1, :cond_0

    const/16 v0, 0x2873

    .line 1402
    :goto_0
    const/4 v1, 0x1

    .line 1401
    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/page/Page_Set;->updateAutoSelected(IZ)V

    .line 1403
    invoke-static {p1}, Lcom/syu/app/ipc/Bt_IpcObj;->setAutoAnswer(Z)V

    .line 1404
    return-void

    .line 1402
    :cond_0
    const/16 v0, 0x2874

    goto :goto_0
.end method

.method public setBtName(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 807
    const/16 v3, 0x28ad

    .line 806
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 808
    .local v0, "text2":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 812
    const/16 v3, 0x28ae

    .line 811
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 813
    .local v1, "text3":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_1

    .line 814
    invoke-virtual {v1, p1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 815
    :cond_1
    return-void
.end method

.method public setBtPin(Ljava/lang/String;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 819
    const/16 v3, 0x28af

    .line 818
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 820
    .local v0, "text4":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 824
    const/16 v3, 0x28b0

    .line 823
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 825
    .local v1, "text5":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_1

    .line 826
    invoke-virtual {v1, p1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 827
    :cond_1
    return-void
.end method

.method public setButtonColor(I)V
    .locals 9
    .param p1, "color"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1904
    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "changecolor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1942
    :cond_0
    :goto_0
    return-void

    .line 1913
    :cond_1
    new-array v0, v8, [I

    .line 1914
    aput p1, v0, v6

    .line 1915
    aput p1, v0, v7

    .line 1917
    .local v0, "colors":[I
    new-array v3, v8, [[I

    .line 1918
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    aput-object v4, v3, v6

    .line 1919
    new-array v4, v7, [I

    const v5, 0x101009c

    aput v5, v4, v6

    aput-object v4, v3, v7

    .line 1922
    .local v3, "states":[[I
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    .line 1923
    const/16 v5, 0x2876

    .line 1922
    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1924
    .local v1, "name":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_2

    .line 1925
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1926
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1929
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    .line 1930
    const/16 v5, 0x2878

    .line 1929
    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1931
    .local v2, "pin":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v2, :cond_3

    .line 1932
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1933
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1938
    :cond_3
    iget-object v4, p0, Lcom/syu/bt/page/Page_Set;->mBtReset:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v4, :cond_0

    .line 1939
    iget-object v4, p0, Lcom/syu/bt/page/Page_Set;->mBtReset:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1940
    iget-object v4, p0, Lcom/syu/bt/page/Page_Set;->mBtReset:Lcom/lsec/core/frame/ctrl/JButton;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public setColorSwitch(Z)V
    .locals 7
    .param p1, "bShow"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1407
    sput-boolean p1, Lcom/syu/bt/App_Bt;->color_show:Z

    .line 1408
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v5, v2, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v6, "colorshow"

    .line 1409
    sget-boolean v2, Lcom/syu/bt/App_Bt;->color_show:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 1408
    :goto_0
    invoke-virtual {v5, v6, v2}, Lcom/lsec/core/util/MySharePreference2;->saveIntValue(Ljava/lang/String;I)V

    .line 1410
    iget-object v2, p0, Lcom/syu/bt/page/Page_Set;->View_Color:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1411
    iget-object v5, p0, Lcom/syu/bt/page/Page_Set;->View_Color:Landroid/view/View;

    sget-boolean v2, Lcom/syu/bt/App_Bt;->color_show:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1413
    :cond_0
    sget-object v2, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, v2, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v5, 0x2712

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JPage;

    .line 1415
    .local v1, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    const/16 v2, 0x28aa

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 1414
    check-cast v0, Lcom/lsec/core/frame/ctrl/JView;

    .line 1416
    .local v0, "ivBgColor":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v0, :cond_1

    .line 1417
    sget-boolean v2, Lcom/syu/bt/App_Bt;->color_show:Z

    if-eqz v2, :cond_5

    :goto_2
    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JView;->setVisibility(I)V

    .line 1419
    :cond_1
    iget-object v2, p0, Lcom/syu/bt/page/Page_Set;->tvColor:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_2

    .line 1420
    iget-object v3, p0, Lcom/syu/bt/page/Page_Set;->tvColor:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v4, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 1421
    sget-boolean v2, Lcom/syu/bt/App_Bt;->color_show:Z

    if-eqz v2, :cond_6

    const-string v2, "bt_opened"

    :goto_3
    invoke-virtual {v4, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1420
    invoke-virtual {v3, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1422
    :cond_2
    return-void

    .end local v0    # "ivBgColor":Lcom/lsec/core/frame/ctrl/JView;
    .end local v1    # "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_3
    move v2, v3

    .line 1409
    goto :goto_0

    :cond_4
    move v2, v4

    .line 1412
    goto :goto_1

    .restart local v0    # "ivBgColor":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v1    # "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_5
    move v3, v4

    .line 1418
    goto :goto_2

    .line 1421
    :cond_6
    const-string v2, "bt_closed"

    goto :goto_3
.end method

.method public setDayOrNight(I)V
    .locals 17
    .param p1, "value"    # I

    .prologue
    .line 2057
    sget-object v12, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v13, "BT_NEW"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2058
    if-lez p1, :cond_1

    .line 2059
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    .line 2060
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 2061
    const-string v14, "bt_night"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v15

    iget-object v15, v15, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 2062
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v16, v0

    .line 2060
    invoke-virtual/range {v13 .. v16}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 2059
    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2187
    :cond_0
    :goto_0
    return-void

    .line 2066
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    .line 2067
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v13

    iget-object v13, v13, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 2068
    const-string v14, "bk_day"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v15

    iget-object v15, v15, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 2069
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    move-object/from16 v16, v0

    .line 2067
    invoke-virtual/range {v13 .. v16}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 2066
    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2073
    :cond_2
    sget-boolean v12, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v12, :cond_0

    .line 2074
    if-lez p1, :cond_4

    const-string v8, "night_"

    .line 2076
    .local v8, "str":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Set;->nightBtn:[I

    array-length v12, v12

    if-lt v4, v12, :cond_5

    .line 2161
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Set;->nightView:[I

    array-length v12, v12

    if-lt v5, v12, :cond_18

    .line 2179
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Set;->nightText:[I

    array-length v12, v12

    if-ge v6, v12, :cond_0

    .line 2180
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Set;->nightText:[I

    aget v13, v13, v6

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/lsec/core/frame/ctrl/JText;

    .line 2181
    .local v10, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v10, :cond_3

    .line 2182
    if-lez p1, :cond_1b

    const/4 v12, -0x1

    :goto_5
    invoke-virtual {v10, v12}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 2179
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2074
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "k":I
    .end local v8    # "str":Ljava/lang/String;
    .end local v10    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_4
    const-string v8, ""

    goto :goto_1

    .line 2077
    .restart local v4    # "i":I
    .restart local v8    # "str":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    .line 2078
    .local v1, "button":Lcom/lsec/core/frame/ctrl/JButton;
    const/4 v9, 0x0

    .line 2079
    .local v9, "switchBtn":Lcom/syu/bt/ctrl/JSwitchButon2;
    const/4 v3, 0x0

    .line 2080
    .local v3, "editText":Lcom/lsec/core/frame/ctrl/JEditText;
    const/4 v12, 0x2

    if-eq v4, v12, :cond_6

    const/4 v12, 0x3

    if-ne v4, v12, :cond_c

    .line 2081
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    .line 2082
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Set;->nightBtn:[I

    aget v13, v13, v4

    .line 2081
    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "switchBtn":Lcom/syu/bt/ctrl/JSwitchButon2;
    check-cast v9, Lcom/syu/bt/ctrl/JSwitchButon2;

    .line 2090
    .restart local v9    # "switchBtn":Lcom/syu/bt/ctrl/JSwitchButon2;
    :goto_6
    if-eqz v1, :cond_7

    .line 2091
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JButton;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    .line 2092
    .local v2, "drawableName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 2093
    const-string v12, "night_"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2095
    const-string v12, "night_"

    const-string v13, ""

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    .line 2094
    invoke-virtual {v1, v12, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    .line 2103
    .end local v2    # "drawableName":Ljava/lang/String;
    :cond_7
    :goto_7
    sget-object v12, Lcom/syu/bt/App_Bt;->mUi_Name:Ljava/lang/String;

    const-string v13, "yl_dn1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 2104
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Set;->nightBtn:[I

    aget v12, v12, v4

    const/16 v13, 0x2744

    if-eq v12, v13, :cond_8

    .line 2105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Set;->nightBtn:[I

    aget v12, v12, v4

    const/16 v13, 0x2746

    if-eq v12, v13, :cond_8

    .line 2106
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Set;->nightBtn:[I

    aget v12, v12, v4

    const/16 v13, 0x2745

    if-eq v12, v13, :cond_8

    .line 2107
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Set;->nightBtn:[I

    aget v12, v12, v4

    const/16 v13, 0x274e

    if-eq v12, v13, :cond_8

    .line 2108
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/syu/bt/page/Page_Set;->nightBtn:[I

    aget v12, v12, v4

    const/16 v13, 0x274d

    if-ne v12, v13, :cond_9

    .line 2109
    :cond_8
    if-eqz v1, :cond_9

    .line 2110
    if-lez p1, :cond_10

    const/4 v12, -0x1

    :goto_8
    invoke-virtual {v1, v12}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 2113
    :cond_9
    if-eqz v9, :cond_a

    .line 2114
    invoke-virtual {v9}, Lcom/syu/bt/ctrl/JSwitchButon2;->getSwitchTag()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 2115
    if-lez p1, :cond_a

    .line 2117
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    const/16 v13, 0x7d0

    if-ne v12, v13, :cond_11

    .line 2118
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    .line 2119
    const-string v13, "night_bt2000_confirm"

    .line 2120
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v14

    iget-object v14, v14, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 2121
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v15

    iget-object v15, v15, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 2118
    invoke-virtual {v12, v13, v14, v15}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2128
    .local v7, "on":Landroid/graphics/drawable/Drawable;
    :goto_9
    const-string v12, "night_"

    invoke-virtual {v9, v12, v7, v7}, Lcom/syu/bt/ctrl/JSwitchButon2;->setSwitchBk(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2147
    .end local v7    # "on":Landroid/graphics/drawable/Drawable;
    :cond_a
    :goto_a
    if-eqz v3, :cond_b

    .line 2148
    if-lez p1, :cond_14

    const/4 v12, -0x1

    :goto_b
    invoke-virtual {v3, v12}, Lcom/lsec/core/frame/ctrl/JEditText;->setTextColor(I)V

    .line 2150
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    const/16 v13, 0x7d0

    if-ne v12, v13, :cond_16

    .line 2152
    if-lez p1, :cond_15

    const-string v12, "night_bt_set_editbk"

    .line 2153
    :goto_c
    const/4 v13, 0x1

    .line 2151
    invoke-virtual {v3, v12, v13}, Lcom/lsec/core/frame/ctrl/JEditText;->setStrDrawable(Ljava/lang/String;Z)V

    .line 2076
    :cond_b
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 2083
    :cond_c
    const/4 v12, 0x4

    if-eq v4, v12, :cond_d

    const/4 v12, 0x5

    if-ne v4, v12, :cond_e

    .line 2084
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    .line 2085
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Set;->nightBtn:[I

    aget v13, v13, v4

    .line 2084
    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "editText":Lcom/lsec/core/frame/ctrl/JEditText;
    check-cast v3, Lcom/lsec/core/frame/ctrl/JEditText;

    .line 2086
    .restart local v3    # "editText":Lcom/lsec/core/frame/ctrl/JEditText;
    goto/16 :goto_6

    .line 2087
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Set;->nightBtn:[I

    aget v13, v13, v4

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .restart local v1    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    goto/16 :goto_6

    .line 2098
    .restart local v2    # "drawableName":Ljava/lang/String;
    :cond_f
    const-string v12, "night_"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 2099
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "night_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Lcom/lsec/core/frame/ctrl/JButton;->setStrDrawable(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 2111
    .end local v2    # "drawableName":Ljava/lang/String;
    :cond_10
    const/high16 v12, -0x1000000

    goto/16 :goto_8

    .line 2123
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    .line 2124
    const-string v13, "night_bt_confirm"

    .line 2125
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v14

    iget-object v14, v14, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 2126
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v15

    iget-object v15, v15, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 2123
    invoke-virtual {v12, v13, v14, v15}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7    # "on":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_9

    .line 2131
    .end local v7    # "on":Landroid/graphics/drawable/Drawable;
    :cond_12
    if-gtz p1, :cond_a

    .line 2133
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    const/16 v13, 0x7d0

    if-ne v12, v13, :cond_13

    .line 2134
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    .line 2135
    const-string v13, "bt2000_confirm"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v14

    iget-object v14, v14, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 2136
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v15

    iget-object v15, v15, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 2134
    invoke-virtual {v12, v13, v14, v15}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2142
    .restart local v7    # "on":Landroid/graphics/drawable/Drawable;
    :goto_e
    const-string v12, ""

    invoke-virtual {v9, v12, v7, v7}, Lcom/syu/bt/ctrl/JSwitchButon2;->setSwitchBk(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 2138
    .end local v7    # "on":Landroid/graphics/drawable/Drawable;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    .line 2139
    const-string v13, "bt_confirm"

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v14

    iget-object v14, v14, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 2140
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v15

    iget-object v15, v15, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    .line 2138
    invoke-virtual {v12, v13, v14, v15}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7    # "on":Landroid/graphics/drawable/Drawable;
    goto :goto_e

    .line 2148
    .end local v7    # "on":Landroid/graphics/drawable/Drawable;
    :cond_14
    const/high16 v12, -0x1000000

    goto/16 :goto_b

    .line 2153
    :cond_15
    const-string v12, "bt_set_editbk"

    goto/16 :goto_c

    .line 2156
    :cond_16
    if-lez p1, :cond_17

    const-string v12, "night_bt2000_set_editbk"

    .line 2157
    :goto_f
    const/4 v13, 0x1

    .line 2155
    invoke-virtual {v3, v12, v13}, Lcom/lsec/core/frame/ctrl/JEditText;->setStrDrawable(Ljava/lang/String;Z)V

    goto/16 :goto_d

    .line 2157
    :cond_17
    const-string v12, "bt2000_set_editbk"

    goto :goto_f

    .line 2162
    .end local v1    # "button":Lcom/lsec/core/frame/ctrl/JButton;
    .end local v3    # "editText":Lcom/lsec/core/frame/ctrl/JEditText;
    .end local v9    # "switchBtn":Lcom/syu/bt/ctrl/JSwitchButon2;
    .restart local v5    # "j":I
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syu/bt/page/Page_Set;->nightView:[I

    aget v13, v13, v5

    invoke-virtual {v12, v13}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/lsec/core/frame/ctrl/JView;

    .line 2163
    .local v11, "view":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v11, :cond_19

    .line 2164
    invoke-virtual {v11}, Lcom/lsec/core/frame/ctrl/JView;->getStrDrawable()Ljava/lang/String;

    move-result-object v2

    .line 2165
    .restart local v2    # "drawableName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 2166
    const-string v12, "night_"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 2168
    const-string v12, "night_"

    const-string v13, ""

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    .line 2167
    invoke-virtual {v11, v12, v13}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    .line 2161
    .end local v2    # "drawableName":Ljava/lang/String;
    :cond_19
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 2171
    .restart local v2    # "drawableName":Ljava/lang/String;
    :cond_1a
    const-string v12, "night_"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_19

    .line 2172
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "night_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    goto :goto_10

    .line 2182
    .end local v2    # "drawableName":Ljava/lang/String;
    .end local v11    # "view":Lcom/lsec/core/frame/ctrl/JView;
    .restart local v6    # "k":I
    .restart local v10    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_1b
    const/high16 v12, -0x1000000

    goto/16 :goto_5
.end method

.method public setPressed(Lcom/lsec/core/frame/ctrl/JButton;Z)V
    .locals 4
    .param p1, "jButton"    # Lcom/lsec/core/frame/ctrl/JButton;
    .param p2, "pressed"    # Z

    .prologue
    .line 1479
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JButton;->getId()I

    move-result v0

    .line 1480
    .local v0, "id":I
    const-string v1, "gdy9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Page_set setPressed id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/page/Page_Set;->updateSelected(IZ)V

    .line 1482
    return-void

    .line 1481
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSmsFunction(Z)V
    .locals 5
    .param p1, "open"    # Z

    .prologue
    .line 1425
    const-string v2, "sms"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 00 setSmsFunction open =  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    sput-boolean p1, Lcom/syu/bt/App_Bt;->bSms_Ctrl:Z

    .line 1427
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    .line 1428
    const-string v3, "sms_function"

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bSms_Ctrl:Z

    .line 1427
    invoke-virtual {v2, v3, v4}, Lcom/lsec/core/util/MySharePreference2;->saveBooleanValue(Ljava/lang/String;Z)V

    .line 1430
    if-eqz p1, :cond_2

    .line 1431
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_opened"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1435
    .local v0, "str":Ljava/lang/String;
    :goto_0
    const-string v2, "sms"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 00 setSmsFunction str =  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 1438
    const/16 v3, 0x287e

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    .line 1437
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 1439
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_0

    .line 1440
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1442
    :cond_0
    iget-object v2, p0, Lcom/syu/bt/page/Page_Set;->mSMS2:Lcom/syu/bt/ctrl/JSwitchButon2;

    if-eqz v2, :cond_1

    .line 1443
    iget-object v2, p0, Lcom/syu/bt/page/Page_Set;->mSMS2:Lcom/syu/bt/ctrl/JSwitchButon2;

    invoke-virtual {v2, p1}, Lcom/syu/bt/ctrl/JSwitchButon2;->setSwitch(Z)V

    .line 1445
    :cond_1
    return-void

    .line 1433
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_closed"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public setSwitch(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mBTOnOff:Lcom/syu/bt/ctrl/JSwitchButon2;

    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mBTOnOff:Lcom/syu/bt/ctrl/JSwitchButon2;

    invoke-virtual {v0, p1}, Lcom/syu/bt/ctrl/JSwitchButon2;->setSwitch(Z)V

    .line 1733
    :cond_0
    return-void
.end method

.method public showLoadAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1699
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mBtnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mBtnPairSearch:Lcom/lsec/core/frame/ctrl/JButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setVisibility(I)V

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mProgLoad:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1703
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mProgLoad:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1705
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    if-eqz v0, :cond_2

    .line 1706
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 1707
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    invoke-virtual {v0}, Lcom/lsec/core/util/Runnable_AnimDrawable;->stopRun()V

    .line 1708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Set;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    .line 1711
    :cond_2
    new-instance v0, Lcom/lsec/core/util/Runnable_AnimDrawable;

    iget-object v1, p0, Lcom/syu/bt/page/Page_Set;->mProgLoad:Landroid/view/View;

    .line 1712
    iget-object v2, p0, Lcom/syu/bt/page/Page_Set;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/lsec/core/util/Runnable_AnimDrawable;-><init>(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;I)V

    .line 1711
    iput-object v0, p0, Lcom/syu/bt/page/Page_Set;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    .line 1713
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mRunnable_AnimDrawable:Lcom/lsec/core/util/Runnable_AnimDrawable;

    invoke-static {v4, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 1714
    return-void
.end method

.method public showSetDiscover(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1546
    if-eqz p1, :cond_1

    .line 1547
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->showLoadAnim()V

    .line 1548
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syu/bt/page/Page_Set;->isSetStartDiscovey:Z

    .line 1553
    :cond_0
    :goto_0
    return-void

    .line 1549
    :cond_1
    sget-boolean v0, Lcom/syu/bt/page/Page_Set;->isSetStartDiscovey:Z

    if-eqz v0, :cond_0

    .line 1550
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/page/Page_Set;->isSetStartDiscovey:Z

    .line 1551
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->hideLoadAnim()V

    goto :goto_0
.end method

.method public updateAutoSelected(IZ)V
    .locals 3
    .param p1, "idAutoSel"    # I
    .param p2, "bSelected"    # Z

    .prologue
    .line 1448
    if-eqz p2, :cond_0

    .line 1449
    iget v1, p0, Lcom/syu/bt/page/Page_Set;->idAutoSelect:I

    if-eq v1, p1, :cond_0

    .line 1450
    iget v1, p0, Lcom/syu/bt/page/Page_Set;->idAutoSelect:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/syu/bt/page/Page_Set;->updateAutoSelected(IZ)V

    .line 1451
    iput p1, p0, Lcom/syu/bt/page/Page_Set;->idAutoSelect:I

    .line 1455
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1456
    .local v0, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v0, :cond_1

    .line 1457
    invoke-virtual {v0, p2}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 1458
    :cond_1
    return-void
.end method

.method public updateCarplayAuto(Z)V
    .locals 4
    .param p1, "bAuto"    # Z

    .prologue
    .line 2191
    const-string v1, "gdy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 33 recv 166  updateCarplayAutob Auto = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    iget-object v1, p0, Lcom/syu/bt/page/Page_Set;->mButtonCarplayAuto:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    if-eqz v1, :cond_0

    .line 2193
    iget-object v1, p0, Lcom/syu/bt/page/Page_Set;->mButtonCarplayAuto:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    invoke-virtual {v1, p1}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setChecked(Z)V

    .line 2195
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/page/Page_Set;->mButtonCarplayAuto2:Lcom/syu/bt/ctrl/JSwitchButon2;

    if-eqz v1, :cond_1

    .line 2196
    iget-object v1, p0, Lcom/syu/bt/page/Page_Set;->mButtonCarplayAuto2:Lcom/syu/bt/ctrl/JSwitchButon2;

    invoke-virtual {v1, p1}, Lcom/syu/bt/ctrl/JSwitchButon2;->setSwitch(Z)V

    .line 2198
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_closed"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2199
    .local v0, "str":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 2200
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_opened"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2202
    :cond_2
    iget-object v1, p0, Lcom/syu/bt/page/Page_Set;->mTextCarplayAuto:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_3

    .line 2203
    iget-object v1, p0, Lcom/syu/bt/page/Page_Set;->mTextCarplayAuto:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2205
    :cond_3
    return-void
.end method

.method public updatePin(Ljava/lang/String;)V
    .locals 1
    .param p1, "strPin"    # Ljava/lang/String;

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1739
    :cond_0
    return-void
.end method

.method public updateResetEnable(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 834
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/syu/bt/page/Page_Set;->isClickReSet:Z

    .line 835
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mBtReset:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->mBtReset:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->animReset:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 840
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/Page_Set;->animReset:Landroid/animation/ValueAnimator;

    .line 841
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->animReset:Landroid/animation/ValueAnimator;

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 842
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->animReset:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/syu/bt/page/Page_Set$15;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Set$15;-><init>(Lcom/syu/bt/page/Page_Set;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 850
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->animReset:Landroid/animation/ValueAnimator;

    .line 851
    new-instance v1, Lcom/syu/bt/page/Page_Set$16;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/Page_Set$16;-><init>(Lcom/syu/bt/page/Page_Set;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 880
    :cond_1
    if-eqz p1, :cond_5

    .line 881
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->tvBtReset:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_2

    .line 882
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->tvBtReset:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 883
    const-string v2, "bt_reset"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 882
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 886
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->animReset:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 887
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->animReset:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 896
    :cond_3
    :goto_1
    return-void

    .line 834
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 890
    :cond_5
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->animReset:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 891
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->animReset:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 892
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->animReset:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 840
    :array_0
    .array-data 4
        0x14
        0x0
    .end array-data
.end method

.method public updateRingName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->tvRingName:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set;->tvRingName:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 1744
    :cond_0
    return-void
.end method

.method public updateRingSelect(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1376
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 1377
    const/16 v6, 0x2889

    .line 1376
    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1378
    .local v1, "tone":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 1379
    const/16 v6, 0x288a

    .line 1378
    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1380
    .local v2, "voice":Lcom/lsec/core/frame/ctrl/JButton;
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Set;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    .line 1381
    const/16 v6, 0x288b

    .line 1380
    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JButton;

    .line 1383
    .local v0, "off":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_0

    .line 1385
    if-ne p1, v4, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 1388
    :cond_0
    if-eqz v2, :cond_1

    .line 1390
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 1393
    :cond_1
    if-eqz v0, :cond_2

    .line 1395
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    :goto_2
    invoke-virtual {v0, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 1398
    :cond_2
    return-void

    :cond_3
    move v3, v5

    .line 1385
    goto :goto_0

    :cond_4
    move v3, v5

    .line 1390
    goto :goto_1

    :cond_5
    move v4, v5

    .line 1395
    goto :goto_2
.end method

.method public updateSelected(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "bSelected"    # Z

    .prologue
    .line 1461
    const/4 v0, -0x1

    .line 1462
    .local v0, "idAuto":I
    packed-switch p1, :pswitch_data_0

    .line 1469
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1470
    iget v1, p0, Lcom/syu/bt/page/Page_Set;->idAutoSelect:I

    if-eq v1, v0, :cond_0

    .line 1471
    iget v1, p0, Lcom/syu/bt/page/Page_Set;->idAutoSelect:I

    if-lez v1, :cond_0

    .line 1472
    iget v1, p0, Lcom/syu/bt/page/Page_Set;->idAutoSelect:I

    invoke-virtual {p0, v1, p2}, Lcom/syu/bt/page/Page_Set;->updateAutoSelected(IZ)V

    .line 1475
    :cond_0
    return-void

    .line 1465
    :pswitch_0
    move v0, p1

    goto :goto_0

    .line 1462
    nop

    :pswitch_data_0
    .packed-switch 0x2873
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
