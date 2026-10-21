.class public final Le/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final synthetic c:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/CarLinkService;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Le/j;->a:I

    .line 1
    iput-object p1, p0, Le/j;->c:Landroid/content/ContextWrapper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/syu/carlink/MainActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Le/j;->a:I

    .line 3
    iput-object p1, p0, Le/j;->c:Landroid/content/ContextWrapper;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x80000000

    .line 5
    iput p1, p0, Le/j;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .line 1
    iget v0, p0, Le/j;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    iget v0, p0, Le/j;->b:I

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Le/j;->c:Landroid/content/ContextWrapper;

    .line 14
    .line 15
    check-cast v3, Lcom/syu/carlink/CarLinkService;

    .line 16
    .line 17
    iput v0, v3, Lcom/syu/carlink/CarLinkService;->G:I

    .line 18
    .line 19
    iput p1, p0, Le/j;->b:I

    .line 20
    .line 21
    iget-object v0, p0, Le/j;->c:Landroid/content/ContextWrapper;

    .line 22
    .line 23
    check-cast v0, Lcom/syu/carlink/CarLinkService;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->M:Lcom/syu/carlink/a;

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Le/j;->c:Landroid/content/ContextWrapper;

    .line 33
    .line 34
    check-cast v0, Lcom/syu/carlink/CarLinkService;

    .line 35
    .line 36
    iget-object v3, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->M:Lcom/syu/carlink/a;

    .line 39
    .line 40
    const-wide/16 v4, 0xc8

    .line 41
    .line 42
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    :cond_0
    const/4 v0, 0x1

    .line 46
    if-eq p1, v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    if-eq p1, v0, :cond_2

    .line 50
    .line 51
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p1, p1, Lg/b;->t:Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string p1, "me"

    .line 71
    .line 72
    invoke-static {p1}, Lt/b;->B(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v2

    .line 76
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v0, "value"

    .line 81
    .line 82
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v0, "sys.carlink.type"

    .line 86
    .line 87
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :goto_1
    iget v0, p0, Le/j;->b:I

    .line 92
    .line 93
    if-ne v0, p1, :cond_3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    iput p1, p0, Le/j;->b:I

    .line 97
    .line 98
    iget-object v0, p0, Le/j;->c:Landroid/content/ContextWrapper;

    .line 99
    .line 100
    const/4 v3, -0x2

    .line 101
    const-wide/16 v4, 0x12c

    .line 102
    .line 103
    if-ne p1, v3, :cond_5

    .line 104
    .line 105
    check-cast v0, Lcom/syu/carlink/MainActivity;

    .line 106
    .line 107
    iget-object p1, v0, Lcom/syu/carlink/MainActivity;->l:Lcom/syu/carlink/ui/a;

    .line 108
    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/syu/carlink/ui/a;->a()V

    .line 112
    .line 113
    .line 114
    :cond_4
    iput-object v2, v0, Lcom/syu/carlink/MainActivity;->l:Lcom/syu/carlink/ui/a;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/syu/carlink/MainActivity;->i()Landroid/os/Handler;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance v1, Lcom/syu/carlink/e;

    .line 121
    .line 122
    const/16 v2, 0x8

    .line 123
    .line 124
    invoke-direct {v1, v0, v2}, Lcom/syu/carlink/e;-><init>(Lcom/syu/carlink/MainActivity;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    if-ne p1, v1, :cond_7

    .line 132
    .line 133
    check-cast v0, Lcom/syu/carlink/MainActivity;

    .line 134
    .line 135
    iget-object p1, v0, Lcom/syu/carlink/MainActivity;->l:Lcom/syu/carlink/ui/a;

    .line 136
    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/syu/carlink/ui/a;->a()V

    .line 140
    .line 141
    .line 142
    :cond_6
    iput-object v2, v0, Lcom/syu/carlink/MainActivity;->l:Lcom/syu/carlink/ui/a;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/syu/carlink/MainActivity;->i()Landroid/os/Handler;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance v1, Lcom/syu/carlink/e;

    .line 149
    .line 150
    const/16 v2, 0x9

    .line 151
    .line 152
    invoke-direct {v1, v0, v2}, Lcom/syu/carlink/e;-><init>(Lcom/syu/carlink/MainActivity;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    if-nez p1, :cond_9

    .line 160
    .line 161
    check-cast v0, Lcom/syu/carlink/MainActivity;

    .line 162
    .line 163
    iget-object p1, v0, Lcom/syu/carlink/MainActivity;->l:Lcom/syu/carlink/ui/a;

    .line 164
    .line 165
    if-eqz p1, :cond_8

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/syu/carlink/ui/a;->a()V

    .line 168
    .line 169
    .line 170
    :cond_8
    iput-object v2, v0, Lcom/syu/carlink/MainActivity;->l:Lcom/syu/carlink/ui/a;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/syu/carlink/MainActivity;->i()Landroid/os/Handler;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    new-instance v1, Lcom/syu/carlink/e;

    .line 177
    .line 178
    const/16 v2, 0xa

    .line 179
    .line 180
    invoke-direct {v1, v0, v2}, Lcom/syu/carlink/e;-><init>(Lcom/syu/carlink/MainActivity;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_9
    check-cast v0, Lcom/syu/carlink/MainActivity;

    .line 188
    .line 189
    iget-object p1, v0, Lcom/syu/carlink/MainActivity;->l:Lcom/syu/carlink/ui/a;

    .line 190
    .line 191
    if-eqz p1, :cond_a

    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/syu/carlink/ui/a;->a()V

    .line 194
    .line 195
    .line 196
    :cond_a
    :goto_2
    return-void

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Le/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Le/j;->a(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_0
    check-cast p1, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Le/j;->a(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
