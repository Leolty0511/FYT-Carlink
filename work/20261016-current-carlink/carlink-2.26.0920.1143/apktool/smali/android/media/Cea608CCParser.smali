.class Landroid/media/Cea608CCParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea608CCParser$CCData;,
        Landroid/media/Cea608CCParser$CCMemory;,
        Landroid/media/Cea608CCParser$CCLineBuilder;,
        Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;,
        Landroid/media/Cea608CCParser$PAC;,
        Landroid/media/Cea608CCParser$StyleCode;,
        Landroid/media/Cea608CCParser$DisplayListener;
    }
.end annotation


# static fields
.field private static final AOF:I = 0x22

.field private static final AON:I = 0x23

.field private static final BS:I = 0x21

.field private static final CR:I = 0x2d

.field private static final DEBUG:Z

.field private static final DER:I = 0x24

.field private static final EDM:I = 0x2c

.field private static final ENM:I = 0x2e

.field private static final EOC:I = 0x2f

.field private static final FON:I = 0x28

.field private static final INVALID:I = -0x1

.field public static final MAX_COLS:I = 0x20

.field public static final MAX_ROWS:I = 0xf

.field private static final MODE_PAINT_ON:I = 0x1

.field private static final MODE_POP_ON:I = 0x3

.field private static final MODE_ROLL_UP:I = 0x2

.field private static final MODE_TEXT:I = 0x4

.field private static final MODE_UNKNOWN:I = 0x0

.field private static final RCL:I = 0x20

.field private static final RDC:I = 0x29

.field private static final RTD:I = 0x2b

.field private static final RU2:I = 0x25

.field private static final RU3:I = 0x26

.field private static final RU4:I = 0x27

.field private static final TAG:Ljava/lang/String; = "Cea608CCParser"

.field private static final TR:I = 0x2a

.field private static final TS:C = '\u00a0'


# instance fields
.field private mDisplay:Landroid/media/Cea608CCParser$CCMemory;

.field private final mListener:Landroid/media/Cea608CCParser$DisplayListener;

.field private mMode:I

.field private mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

.field private mPrevCtrlCode:I

.field private mRollUpSize:I

.field private mTextMem:Landroid/media/Cea608CCParser$CCMemory;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Cea608CCParser"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Landroid/media/Cea608CCParser;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/media/Cea608CCParser$DisplayListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    iput v0, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    .line 12
    .line 13
    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 19
    .line 20
    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 26
    .line 27
    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    .line 33
    .line 34
    iput-object p1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    .line 35
    .line 36
    return-void
.end method

.method private getMemory()Landroid/media/Cea608CCParser$CCMemory;
    .locals 3

    .line 1
    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v1, "unrecoginized mode: "

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 24
    .line 25
    const-string v2, "Cea608CCParser"

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 40
    .line 41
    return-object v0
.end method

.method private handleCtrlCode(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getCtrlCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    .line 13
    iput v2, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    const/4 v0, 0x4

    .line 17
    const/4 v3, 0x3

    .line 18
    const/4 v4, 0x2

    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    :pswitch_0
    iput v2, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :pswitch_1
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->swapMemory()V

    .line 27
    .line 28
    .line 29
    iput v3, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 30
    .line 31
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :pswitch_2
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :pswitch_3
    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 43
    .line 44
    if-ne v0, v4, :cond_1

    .line 45
    .line 46
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget v2, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/media/Cea608CCParser$CCMemory;->rollUp(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/media/Cea608CCParser$CCMemory;->cr()V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 64
    .line 65
    if-ne v0, v4, :cond_3

    .line 66
    .line 67
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :pswitch_4
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :pswitch_5
    iput v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :pswitch_6
    iput v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 84
    .line 85
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :pswitch_7
    iput v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :pswitch_8
    const-string v0, "Cea608CCParser"

    .line 95
    .line 96
    const-string v2, "Flash On"

    .line 97
    .line 98
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :pswitch_9
    add-int/lit8 v0, p1, -0x23

    .line 103
    .line 104
    iput v0, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    .line 105
    .line 106
    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 107
    .line 108
    if-eq v0, v4, :cond_2

    .line 109
    .line 110
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    .line 118
    .line 119
    .line 120
    :cond_2
    iput v4, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :pswitch_a
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/media/Cea608CCParser$CCMemory;->der()V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :pswitch_b
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/media/Cea608CCParser$CCMemory;->bs()V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :pswitch_c
    iput v3, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 140
    .line 141
    :cond_3
    :goto_1
    iput p1, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    .line 142
    .line 143
    return v1

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleDisplayableChars(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->isDisplayableChar()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/media/Cea608CCParser$CCData;->access$000(Landroid/media/Cea608CCParser$CCData;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/media/Cea608CCParser$CCMemory;->bs()V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Landroid/media/Cea608CCParser$CCMemory;->writeText(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget p1, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    if-eq p1, v0, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    if-ne p1, v1, :cond_3

    .line 40
    .line 41
    :cond_2
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    .line 42
    .line 43
    .line 44
    :cond_3
    return v0
.end method

.method private handleMidRowCode(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getMidRow()Landroid/media/Cea608CCParser$StyleCode;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/media/Cea608CCParser$CCMemory;->writeMidRowCode(Landroid/media/Cea608CCParser$StyleCode;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method private handlePACCode(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getPAC()Landroid/media/Cea608CCParser$PAC;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->getRow()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v2, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/media/Cea608CCParser$CCMemory;->access$100(Landroid/media/Cea608CCParser$CCMemory;II)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p1}, Landroid/media/Cea608CCParser$CCMemory;->writePAC(Landroid/media/Cea608CCParser$PAC;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method private handleTabOffsets(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getTabOffset()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/media/Cea608CCParser$CCMemory;->tab(I)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method private swapMemory()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 4
    .line 5
    iput-object v1, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 6
    .line 7
    iput-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 8
    .line 9
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/media/Cea608CCParser$DisplayListener;->getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    .line 10
    .line 11
    iget-object v2, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/media/Cea608CCParser$CCMemory;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v1, v0}, Landroid/media/Cea608CCParser$DisplayListener;->onDisplayChanged([Landroid/text/SpannableStringBuilder;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public parse([B)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/media/Cea608CCParser$CCData;->fromByteArray([B)[Landroid/media/Cea608CCParser$CCData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v1, p1

    .line 7
    if-ge v0, v1, :cond_3

    .line 8
    .line 9
    sget-boolean v1, Landroid/media/Cea608CCParser;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    aget-object v1, p1, v0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCData;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "Cea608CCParser"

    .line 20
    .line 21
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    aget-object v1, p1, v0

    .line 25
    .line 26
    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser;->handleCtrlCode(Landroid/media/Cea608CCParser$CCData;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    aget-object v1, p1, v0

    .line 33
    .line 34
    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser;->handleTabOffsets(Landroid/media/Cea608CCParser$CCData;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    aget-object v1, p1, v0

    .line 41
    .line 42
    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser;->handlePACCode(Landroid/media/Cea608CCParser$CCData;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    aget-object v1, p1, v0

    .line 49
    .line 50
    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser;->handleMidRowCode(Landroid/media/Cea608CCParser$CCData;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    aget-object v1, p1, v0

    .line 58
    .line 59
    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser;->handleDisplayableChars(Landroid/media/Cea608CCParser$CCData;)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    return-void
.end method
