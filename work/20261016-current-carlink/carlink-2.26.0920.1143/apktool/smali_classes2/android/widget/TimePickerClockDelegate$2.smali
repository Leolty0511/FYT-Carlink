.class Landroid/widget/TimePickerClockDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadialTimePickerView$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueSelected(IIZ)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eq p1, p2, :cond_1

    .line 15
    .line 16
    move v1, v0

    .line 17
    :cond_1
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 18
    .line 19
    invoke-static {p1, p2, v0, v0}, Landroid/widget/TimePickerClockDelegate;->access$700(Landroid/widget/TimePickerClockDelegate;IIZ)V

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_2
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eq p1, p2, :cond_3

    .line 30
    .line 31
    move p1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    move p1, v1

    .line 34
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 35
    .line 36
    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->access$200(Landroid/widget/TimePickerClockDelegate;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    if-eqz p3, :cond_4

    .line 43
    .line 44
    move p3, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    move p3, v1

    .line 47
    :goto_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 48
    .line 49
    xor-int/lit8 v3, p3, 0x1

    .line 50
    .line 51
    invoke-static {v2, p2, v0, v3, v0}, Landroid/widget/TimePickerClockDelegate;->access$300(Landroid/widget/TimePickerClockDelegate;IIZZ)V

    .line 52
    .line 53
    .line 54
    if-eqz p3, :cond_5

    .line 55
    .line 56
    iget-object p3, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 57
    .line 58
    invoke-static {p3, v0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->access$400(Landroid/widget/TimePickerClockDelegate;IZZ)V

    .line 59
    .line 60
    .line 61
    iget-object p3, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 62
    .line 63
    invoke-static {p3, p2}, Landroid/widget/TimePickerClockDelegate;->access$500(Landroid/widget/TimePickerClockDelegate;I)I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iget-object p3, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 68
    .line 69
    iget-object p3, p3, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p2, ". "

    .line 80
    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 85
    .line 86
    invoke-static {p2}, Landroid/widget/TimePickerClockDelegate;->access$600(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p3, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    move v1, p1

    .line 101
    :goto_2
    iget-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 102
    .line 103
    iget-object p2, p1, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 104
    .line 105
    if-eqz p2, :cond_6

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    iget-object p3, p1, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-interface {p2, p3, p1, v0}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 122
    .line 123
    .line 124
    :cond_6
    return-void
.end method
