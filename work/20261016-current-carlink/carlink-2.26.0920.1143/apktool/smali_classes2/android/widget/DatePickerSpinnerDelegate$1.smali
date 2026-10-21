.class Landroid/widget/DatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$000(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 13
    .line 14
    iget-object v1, v1, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {v0, v1, v2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 32
    .line 33
    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/widget/d;->a(Landroid/icu/util/Calendar;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v0, 0x1

    .line 42
    if-ne p2, p1, :cond_0

    .line 43
    .line 44
    if-ne p3, v0, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 47
    .line 48
    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/widget/b;->y(Landroid/icu/util/Calendar;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    if-ne p2, v0, :cond_1

    .line 57
    .line 58
    if-ne p3, p1, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 61
    .line 62
    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Landroid/widget/b;->A(Landroid/icu/util/Calendar;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 71
    .line 72
    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sub-int/2addr p3, p2

    .line 77
    invoke-static {p1, p3}, Landroid/widget/b;->m(Landroid/icu/util/Calendar;I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 82
    .line 83
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$300(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-ne p1, v0, :cond_5

    .line 88
    .line 89
    const/16 p1, 0xb

    .line 90
    .line 91
    if-ne p2, p1, :cond_3

    .line 92
    .line 93
    if-nez p3, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 96
    .line 97
    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1}, Landroid/widget/d;->i(Landroid/icu/util/Calendar;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    if-nez p2, :cond_4

    .line 106
    .line 107
    if-ne p3, p1, :cond_4

    .line 108
    .line 109
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 110
    .line 111
    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Landroid/widget/d;->p(Landroid/icu/util/Calendar;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 120
    .line 121
    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    sub-int/2addr p3, p2

    .line 126
    invoke-static {p1, p3}, Landroid/widget/d;->z(Landroid/icu/util/Calendar;I)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    iget-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 131
    .line 132
    invoke-static {p2}, Landroid/widget/DatePickerSpinnerDelegate;->access$400(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    if-ne p1, p2, :cond_6

    .line 137
    .line 138
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 139
    .line 140
    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {p1, p3}, Landroid/widget/b;->w(Landroid/icu/util/Calendar;I)V

    .line 145
    .line 146
    .line 147
    :goto_0
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 148
    .line 149
    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-static {p2}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    iget-object p3, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 158
    .line 159
    invoke-static {p3}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    invoke-static {p3}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 164
    .line 165
    .line 166
    move-result p3

    .line 167
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 168
    .line 169
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-static {p1, p2, p3, v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$500(Landroid/widget/DatePickerSpinnerDelegate;III)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 181
    .line 182
    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->access$600(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 186
    .line 187
    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->access$700(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    .line 191
    .line 192
    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->access$800(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 197
    .line 198
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 199
    .line 200
    .line 201
    throw p1
.end method
