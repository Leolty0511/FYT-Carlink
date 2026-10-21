.class public final Le/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/CarLinkService;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Le/i;->b:I

    .line 1
    iput-object p1, p0, Le/i;->d:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lf/k;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Le/i;->b:I

    .line 3
    iput-object p1, p0, Le/i;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Le/i;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Le/i;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Le/i;->d:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_2

    .line 11
    :pswitch_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const-string v5, "me"

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lg/b;->B:Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-static {v0, v6}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    move v0, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v4

    .line 53
    :cond_1
    move v0, v6

    .line 54
    :goto_0
    iget-boolean v5, p0, Le/i;->c:Z

    .line 55
    .line 56
    if-ne v5, v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iput-boolean v0, p0, Le/i;->c:Z

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    check-cast v2, Lcom/syu/carlink/CarLinkService;

    .line 64
    .line 65
    iget-object v0, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    new-array v2, v3, [I

    .line 70
    .line 71
    aput v1, v2, v6

    .line 72
    .line 73
    const/16 v1, 0xe7

    .line 74
    .line 75
    invoke-virtual {v0, v1, v4, v2}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_1
    return-void

    .line 79
    :cond_4
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v4

    .line 83
    :goto_2
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->B()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v4, 0x3

    .line 90
    const-string v5, "Auto"

    .line 91
    .line 92
    if-ne v0, v4, :cond_5

    .line 93
    .line 94
    const-string v0, "wiredAutoStart link disconnected, skip stale attach"

    .line 95
    .line 96
    invoke-static {v5, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    iget-boolean v0, p0, Le/i;->c:Z

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    move-object v0, v2

    .line 105
    check-cast v0, Lf/k;

    .line 106
    .line 107
    iput v3, v0, Lf/k;->h:I

    .line 108
    .line 109
    :cond_6
    check-cast v2, Lf/k;

    .line 110
    .line 111
    iget-object v0, v2, Lf/k;->g:Lcom/syu/carlink/auto/AutoFragment;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    sget-object v4, Lf/k;->y:Lf/k;

    .line 118
    .line 119
    invoke-virtual {v4}, Lf/k;->g()Landroid/hardware/usb/UsbDevice;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    if-nez v2, :cond_7

    .line 124
    .line 125
    iput-boolean v3, v0, Lcom/syu/carlink/auto/AutoFragment;->o:Z

    .line 126
    .line 127
    invoke-virtual {v0, v4}, Lcom/syu/carlink/auto/AutoFragment;->f(Landroid/hardware/usb/UsbDevice;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    sget v6, Lcom/google/android/projection/sink/R$id;->surface:I

    .line 136
    .line 137
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Landroid/view/SurfaceView;

    .line 142
    .line 143
    if-nez v2, :cond_8

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-lez v6, :cond_9

    .line 151
    .line 152
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-lez v6, :cond_9

    .line 157
    .line 158
    const-string v0, "----------------fmt startMode"

    .line 159
    .line 160
    invoke-static {v5, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object v0, Lf/k;->y:Lf/k;

    .line 164
    .line 165
    invoke-virtual {v0, v3}, Lf/k;->m(I)V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    new-instance v3, Lf/f0;

    .line 174
    .line 175
    invoke-direct {v3, v0, v4}, Lf/f0;-><init>(Lcom/syu/carlink/auto/AutoFragment;Landroid/hardware/usb/UsbDevice;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 179
    .line 180
    .line 181
    :goto_3
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-object v0, v0, Lg/b;->t:Landroidx/lifecycle/MutableLiveData;

    .line 188
    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :goto_4
    return-void

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
