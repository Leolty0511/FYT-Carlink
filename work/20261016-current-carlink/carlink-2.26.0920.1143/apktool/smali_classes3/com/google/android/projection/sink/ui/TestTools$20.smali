.class Lcom/google/android/projection/sink/ui/TestTools$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/TestTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/TestTools;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/TestTools;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$20;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    if-eq p2, v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    sget v2, Lcom/google/android/projection/sink/R$id;->dpad_up:I

    .line 17
    .line 18
    if-ne p1, v2, :cond_1

    .line 19
    .line 20
    const/16 p1, 0x13

    .line 21
    .line 22
    :goto_0
    move v2, v1

    .line 23
    move v1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    sget v2, Lcom/google/android/projection/sink/R$id;->dpad_down:I

    .line 26
    .line 27
    if-ne p1, v2, :cond_2

    .line 28
    .line 29
    const/16 p1, 0x14

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    sget v2, Lcom/google/android/projection/sink/R$id;->dpad_left:I

    .line 33
    .line 34
    if-ne p1, v2, :cond_3

    .line 35
    .line 36
    const/16 p1, 0x15

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    sget v2, Lcom/google/android/projection/sink/R$id;->dpad_right:I

    .line 40
    .line 41
    if-ne p1, v2, :cond_4

    .line 42
    .line 43
    const/16 p1, 0x16

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    sget v2, Lcom/google/android/projection/sink/R$id;->dpad_center:I

    .line 47
    .line 48
    if-ne p1, v2, :cond_5

    .line 49
    .line 50
    const/16 p1, 0x17

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    sget v2, Lcom/google/android/projection/sink/R$id;->rotary_ccw:I

    .line 54
    .line 55
    if-ne p1, v2, :cond_6

    .line 56
    .line 57
    sget-object p1, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_ROTARY_CONTROLLER:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v2, -0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_6
    sget v2, Lcom/google/android/projection/sink/R$id;->rotary_cw:I

    .line 66
    .line 67
    if-ne p1, v2, :cond_7

    .line 68
    .line 69
    sget-object p1, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_ROTARY_CONTROLLER:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    move v2, v0

    .line 76
    goto :goto_1

    .line 77
    :cond_7
    sget v2, Lcom/google/android/projection/sink/R$id;->rotary_ccw_fling:I

    .line 78
    .line 79
    if-ne p1, v2, :cond_8

    .line 80
    .line 81
    sget-object p1, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_ROTARY_CONTROLLER:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    const/4 v2, -0x5

    .line 88
    goto :goto_1

    .line 89
    :cond_8
    sget v2, Lcom/google/android/projection/sink/R$id;->rotary_cw_fling:I

    .line 90
    .line 91
    if-ne p1, v2, :cond_9

    .line 92
    .line 93
    sget-object p1, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_ROTARY_CONTROLLER:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    const/4 v2, 0x5

    .line 100
    goto :goto_1

    .line 101
    :cond_9
    move p1, v1

    .line 102
    move v2, p1

    .line 103
    move v1, v0

    .line 104
    move v0, v2

    .line 105
    :goto_1
    if-eqz v0, :cond_b

    .line 106
    .line 107
    iget-object v3, p0, Lcom/google/android/projection/sink/ui/TestTools$20;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 108
    .line 109
    invoke-static {v3}, Lcom/google/android/projection/sink/ui/TestTools;->access$100(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/GalIntegration;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-eqz v3, :cond_b

    .line 114
    .line 115
    if-eqz v1, :cond_a

    .line 116
    .line 117
    new-instance v1, Landroid/view/KeyEvent;

    .line 118
    .line 119
    invoke-direct {v1, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$20;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/TestTools;->access$100(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/GalIntegration;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Lcom/google/android/projection/protocol/InputSource;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_a
    if-nez p2, :cond_b

    .line 135
    .line 136
    iget-object p2, p0, Lcom/google/android/projection/sink/ui/TestTools$20;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    .line 137
    .line 138
    invoke-static {p2}, Lcom/google/android/projection/sink/ui/TestTools;->access$100(Lcom/google/android/projection/sink/ui/TestTools;)Lcom/google/android/projection/sink/GalIntegration;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    iget-object p2, p2, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 143
    .line 144
    invoke-virtual {p2, p1, v2}, Lcom/google/android/projection/protocol/InputSource;->sendRelativeEvent(II)Z

    .line 145
    .line 146
    .line 147
    :cond_b
    :goto_2
    return v0
.end method
