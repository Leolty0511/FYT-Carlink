.class public Lcom/syu/bt/page/pop/Page_PopAIQR2;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopAIQR2.java"


# static fields
.field public static RunnAIUvEcnr:Ljava/lang/Runnable;

.field static isRunnAIUvEcnr:Z

.field private static khName:[Ljava/lang/String;


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;

.field btn_aiqc:Lcom/lsec/core/frame/ctrl/JButton;

.field ivQR:Landroid/view/View;

.field txt_aiqc:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 44
    const/16 v0, 0x90

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NULL"

    aput-object v2, v0, v1

    .line 45
    const-string v1, "FYT"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 46
    const-string v2, "SYU"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 47
    const-string v2, "QLTC"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 48
    const-string v2, "YG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 49
    const-string v2, "MTU"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 50
    const-string v2, "ZYC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 51
    const-string v2, "RL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 52
    const-string v2, "KYD"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 53
    const-string v2, "PCBA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 54
    const-string v2, "CXJ"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 55
    const-string v2, "ZX"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 56
    const-string v2, "YL"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 57
    const-string v2, "SBD"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 58
    const-string v2, "DC"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 59
    const-string v2, "KQ"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 60
    const-string v2, "CML"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 61
    const-string v2, "FFD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 62
    const-string v2, "ZAT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 63
    const-string v2, "BYZH"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 64
    const-string v2, "GM"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 65
    const-string v2, "JYT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 66
    const-string v2, "KBT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 67
    const-string v2, "HY"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 68
    const-string v2, "RB"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 69
    const-string v2, "SYZH"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 70
    const-string v2, "BJ"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 71
    const-string v2, "XJL"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 72
    const-string v2, "OHA"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 73
    const-string v2, "KSH"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 74
    const-string v2, "FXT"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 75
    const-string v2, "AY"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 76
    const-string v2, "PSD"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 77
    const-string v2, "KZ"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 78
    const-string v2, "FYI"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 79
    const-string v2, "WEK"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 80
    const-string v2, "CHS"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 81
    const-string v2, "JLH"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 82
    const-string v2, "ANB"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 83
    const-string v2, "FAD"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 84
    const-string v2, "LMA"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 85
    const-string v2, "HOG"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 86
    const-string v2, "SP"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 87
    const-string v2, "JY"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 88
    const-string v2, "HCF"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 89
    const-string v2, "KDE"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 90
    const-string v2, "DFQC"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 91
    const-string v2, "JC"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 92
    const-string v2, "DDFG"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 93
    const-string v2, "SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 94
    const-string v2, "ZRCN"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 95
    const-string v2, "HYI"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 96
    const-string v2, "LOM"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 97
    const-string v2, "ZHAN"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 98
    const-string v2, "YIC"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 99
    const-string v2, "LYU"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 100
    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 101
    const-string v2, "ZTFR"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 102
    const-string v2, "CT"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 103
    const-string v2, "XPH"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 104
    const-string v2, "XYT"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 105
    const-string v2, "XY"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 106
    const-string v2, "XHCN"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 107
    const-string v2, "DZSJ"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 108
    const-string v2, "FYZN"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 109
    const-string v2, "KYA"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 110
    const-string v2, "CNC"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 111
    const-string v2, "MCL"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 112
    const-string v2, "LUC"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 113
    const-string v2, "ACK"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 114
    const-string v2, "XSH"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 115
    const-string v2, "DAOH"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 116
    const-string v2, "MLT"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 117
    const-string v2, "ACX"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 118
    const-string v2, "YHAO"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 119
    const-string v2, "OTO"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 120
    const-string v2, "YCD"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 121
    const-string v2, "YIAD"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 122
    const-string v2, "TXB"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 123
    const-string v2, "GYOU"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 124
    const-string v2, "GSHI"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 125
    const-string v2, "XZC"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 126
    const-string v2, "LTU"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 127
    const-string v2, "MWS"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 128
    const-string v2, "JRJ"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 129
    const-string v2, "XWH"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 130
    const-string v2, "HBS"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 131
    const-string v2, "BDYH"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 132
    const-string v2, "HTT"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 133
    const-string v2, "BFD"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 134
    const-string v2, "KDA"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 135
    const-string v2, "KET"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 136
    const-string v2, "CLL"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 137
    const-string v2, "DH"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 138
    const-string v2, "DZS2"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 139
    const-string v2, "TZY"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 140
    const-string v2, "KH"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 141
    const-string v2, "HLTX"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 142
    const-string v2, "JKD"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 143
    const-string v2, "HYUN"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 144
    const-string v2, "XZHAN"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    .line 145
    const-string v2, "KAJD"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    .line 146
    const-string v2, "JLY"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 147
    const-string v2, "YILT"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 148
    const-string v2, "GDUH"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    .line 149
    const-string v2, "LUCH"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    .line 150
    const-string v2, "KEJD"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    .line 151
    const-string v2, "TZY2"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    .line 152
    const-string v2, "CZY"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    .line 153
    const-string v2, "NIUM"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    .line 154
    const-string v2, "KYUE"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    .line 155
    const-string v2, "KEDA"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    .line 156
    const-string v2, "YUF"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    .line 157
    const-string v2, "HLYD"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    .line 158
    const-string v2, "ZHIF"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    .line 159
    const-string v2, "YIDT"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    .line 160
    const-string v2, "YIN"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    .line 161
    const-string v2, "DYT"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    .line 162
    const-string v2, "ZHTD"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    .line 163
    const-string v2, "YOUH"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 164
    const-string v2, "LH"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    .line 165
    const-string v2, "HAOD"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    .line 166
    const-string v2, "YUNZ"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    .line 167
    const-string v2, "KAIQY"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    .line 168
    const-string v2, "ZHAN2"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    .line 169
    const-string v2, "KYD2"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    .line 170
    const-string v2, "FXZL"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    .line 171
    const-string v2, "YIN2"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    .line 172
    const-string v2, "HIWORLD"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    .line 173
    const-string v2, "TUMU"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    .line 174
    const-string v2, "YUEC"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    .line 175
    const-string v2, "YIN3"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    .line 176
    const-string v2, "YIN4"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    .line 177
    const-string v2, "CMEI"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    .line 178
    const-string v2, "YUNC"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    .line 179
    const-string v2, "YXI"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    .line 180
    const-string v2, "ANC"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    .line 181
    const-string v2, "LZH"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    .line 182
    const-string v2, "XYZ"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    .line 183
    const-string v2, "MTA"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    .line 184
    const-string v2, "YFEN"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    .line 185
    const-string v2, "SHITU"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    .line 186
    const-string v2, "ZHYUN"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    .line 187
    const-string v2, "DAISI"

    aput-object v2, v0, v1

    .line 44
    sput-object v0, Lcom/syu/bt/page/pop/Page_PopAIQR2;->khName:[Ljava/lang/String;

    .line 233
    sput-boolean v3, Lcom/syu/bt/page/pop/Page_PopAIQR2;->isRunnAIUvEcnr:Z

    .line 234
    new-instance v0, Lcom/syu/bt/page/pop/Page_PopAIQR2$1;

    invoke-direct {v0}, Lcom/syu/bt/page/pop/Page_PopAIQR2$1;-><init>()V

    sput-object v0, Lcom/syu/bt/page/pop/Page_PopAIQR2;->RunnAIUvEcnr:Ljava/lang/Runnable;

    .line 240
    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 6
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 191
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v3}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 192
    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopAIQR2;->actBt:Lcom/syu/bt/Act_Bt;

    .line 193
    const-string v3, "ai11"

    const-string v4, "  *** 00 Page_PopAIQR2 init "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v3, p2, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v4, 0x2727

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 197
    .local v2, "pageDlg":Lcom/lsec/core/frame/ctrl/JPage;
    const/16 v3, 0x2897

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/syu/bt/page/pop/Page_PopAIQR2;->ivQR:Landroid/view/View;

    .line 198
    const-string v3, "ai"

    const-string v4, "  00 Page_PopAIQR aiStrQR  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "aiStrQR":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "serialno"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/syu/bt/App_Bt;->mRoPlatForm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Lcom/syu/bt/App_Bt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v3

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_ai4"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const-string v3, "sys.blinkbt.ai.noise.scan"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/16 v3, 0x15e

    invoke-direct {p0, v0, v3}, Lcom/syu/bt/page/pop/Page_PopAIQR2;->createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 210
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const-string v3, "ai"

    const-string v4, "  11 Page_PopAIQR "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopAIQR2;->ivQR:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 212
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopAIQR2;->ivQR:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v5, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 218
    const/16 v3, 0x2899

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v3, p0, Lcom/syu/bt/page/pop/Page_PopAIQR2;->txt_aiqc:Lcom/lsec/core/frame/ctrl/JText;

    .line 219
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopAIQR2;->txt_aiqc:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopAIQR2;->txt_aiqc:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/page/pop/Page_PopAIQR2;->getKHName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v3

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v5, "bt_ai6"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 245
    :try_start_0
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  00 createQRCode content = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 247
    .local v0, "writer":Lcom/google/zxing/qrcode/QRCodeWriter;
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  11 createQRCode content = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "UTF-8"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  22 createQRCode content = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v1, p1

    move v3, p2

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    .line 255
    .local v8, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 256
    .local v10, "width":I
    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 257
    .local v7, "height":I
    mul-int v1, v10, v7

    new-array v9, v1, [I

    .line 258
    .local v9, "pixels":[I
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_0
    if-lt v12, v7, :cond_0

    .line 264
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  33 createQRCode content = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v7, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 268
    .end local v0    # "writer":Lcom/google/zxing/qrcode/QRCodeWriter;
    .end local v5    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v7    # "height":I
    .end local v8    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .end local v9    # "pixels":[I
    .end local v10    # "width":I
    .end local v12    # "y":I
    :goto_1
    return-object v1

    .line 259
    .restart local v0    # "writer":Lcom/google/zxing/qrcode/QRCodeWriter;
    .restart local v5    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .restart local v7    # "height":I
    .restart local v8    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .restart local v9    # "pixels":[I
    .restart local v10    # "width":I
    .restart local v12    # "y":I
    :cond_0
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_2
    if-lt v11, v10, :cond_1

    .line 258
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 260
    :cond_1
    mul-int v1, v12, v10

    add-int v2, v1, v11

    invoke-virtual {v8, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, -0x1000000

    :goto_3
    aput v1, v9, v2
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 260
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 266
    .end local v0    # "writer":Lcom/google/zxing/qrcode/QRCodeWriter;
    .end local v5    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v7    # "height":I
    .end local v8    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .end local v9    # "pixels":[I
    .end local v10    # "width":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :catch_0
    move-exception v6

    .line 267
    .local v6, "e":Lcom/google/zxing/WriterException;
    invoke-virtual {v6}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 268
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getKHName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 224
    const-string v1, ""

    .line 225
    .local v1, "name":Ljava/lang/String;
    const-string v2, "ro.build.fytmanufacturer"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 226
    .local v0, "id":I
    if-ltz v0, :cond_0

    const/16 v2, 0x8f

    if-gt v0, v2, :cond_0

    .line 227
    sget-object v2, Lcom/syu/bt/page/pop/Page_PopAIQR2;->khName:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 230
    :goto_0
    const-string v2, "ai"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  22 Page_PopAIQR getKHName id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-object v1

    .line 229
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NULL"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .prologue
    .line 273
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->onDismiss()V

    .line 274
    sget-object v0, Lcom/syu/bt/page/Page_Set;->mRunnExitAIQR:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 275
    const/4 v0, 0x1

    sget-object v1, Lcom/syu/bt/page/Page_Set;->mRunnExitAIQR:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 276
    const-string v0, "ai11"

    const-string v1, "  *** 11 Page_PopAIQR2 onDismiss "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 288
    const-string v0, "ai11"

    const-string v1, "  *** 22 Page_PopAIQR2 pause "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->resume()V

    .line 282
    const-string v0, "ai11"

    const-string v1, "  *** 11 Page_PopAIQR2 resume "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method
