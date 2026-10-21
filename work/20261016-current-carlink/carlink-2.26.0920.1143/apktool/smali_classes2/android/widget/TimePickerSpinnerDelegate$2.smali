.class Landroid/widget/TimePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/widget/TimePickerSpinnerDelegate;->access$000(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/widget/TimePickerSpinnerDelegate;->access$400(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getMinValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->access$400(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMaxValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ne p2, v0, :cond_1

    .line 27
    .line 28
    if-ne p3, p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 31
    .line 32
    invoke-static {p1}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    add-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    iget-object p2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_0

    .line 49
    .line 50
    const/16 p2, 0xc

    .line 51
    .line 52
    if-ne p1, p2, :cond_0

    .line 53
    .line 54
    iget-object p2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 55
    .line 56
    invoke-static {p2}, Landroid/widget/TimePickerSpinnerDelegate;->access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    xor-int/lit8 p3, p3, 0x1

    .line 61
    .line 62
    invoke-static {p2, p3}, Landroid/widget/TimePickerSpinnerDelegate;->access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 66
    .line 67
    invoke-static {p2}, Landroid/widget/TimePickerSpinnerDelegate;->access$200(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object p2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 71
    .line 72
    invoke-static {p2}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p2, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    if-ne p2, p1, :cond_3

    .line 81
    .line 82
    if-ne p3, v0, :cond_3

    .line 83
    .line 84
    iget-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 85
    .line 86
    invoke-static {p1}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    add-int/lit8 p1, p1, -0x1

    .line 95
    .line 96
    iget-object p2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 97
    .line 98
    invoke-virtual {p2}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-nez p2, :cond_2

    .line 103
    .line 104
    const/16 p2, 0xb

    .line 105
    .line 106
    if-ne p1, p2, :cond_2

    .line 107
    .line 108
    iget-object p2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 109
    .line 110
    invoke-static {p2}, Landroid/widget/TimePickerSpinnerDelegate;->access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    xor-int/lit8 p3, p3, 0x1

    .line 115
    .line 116
    invoke-static {p2, p3}, Landroid/widget/TimePickerSpinnerDelegate;->access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 120
    .line 121
    invoke-static {p2}, Landroid/widget/TimePickerSpinnerDelegate;->access$200(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    iget-object p2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 125
    .line 126
    invoke-static {p2}, Landroid/widget/TimePickerSpinnerDelegate;->access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p2, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    .line 134
    .line 135
    invoke-static {p1}, Landroid/widget/TimePickerSpinnerDelegate;->access$300(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method
