.class public final Lf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf/k;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf/c;->b:I

    .line 1
    iput-object p1, p0, Lf/c;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3c

    .line 2
    iput p1, p0, Lf/c;->c:I

    return-void
.end method

.method public constructor <init>(Lf/y;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf/c;->b:I

    .line 3
    iput-object p1, p0, Lf/c;->d:Ljava/lang/Object;

    iput p2, p0, Lf/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lf/c;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lf/c;->d:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :pswitch_0
    check-cast v1, Lf/k;

    .line 11
    .line 12
    invoke-virtual {v1}, Lf/k;->f()Lcom/syu/carlink/CarLinkService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "Wirelessed Auto linking ----->>>  linkState: "

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->B()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, " cnt :"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v3, v1, Lf/k;->u:I

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "Auto"

    .line 51
    .line 52
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->B()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v4, 0x4

    .line 67
    const/4 v5, 0x0

    .line 68
    if-ne v2, v4, :cond_3

    .line 69
    .line 70
    iget v2, v1, Lf/k;->u:I

    .line 71
    .line 72
    const/16 v4, 0x3c

    .line 73
    .line 74
    const/4 v6, 0x1

    .line 75
    if-ge v2, v4, :cond_1

    .line 76
    .line 77
    add-int/2addr v2, v6

    .line 78
    iput v2, v1, Lf/k;->u:I

    .line 79
    .line 80
    const-wide/16 v1, 0x384

    .line 81
    .line 82
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    if-ne v2, v4, :cond_4

    .line 87
    .line 88
    iput v5, v1, Lf/k;->u:I

    .line 89
    .line 90
    iget v2, v1, Lf/k;->v:I

    .line 91
    .line 92
    if-ge v2, v6, :cond_2

    .line 93
    .line 94
    add-int/2addr v2, v6

    .line 95
    iput v2, v1, Lf/k;->v:I

    .line 96
    .line 97
    iget-object v1, v1, Lf/k;->t:Lf/b;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    .line 101
    .line 102
    const-wide/16 v2, 0x1f4

    .line 103
    .line 104
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v2, "Wirelessed Auto connect timeout after "

    .line 111
    .line 112
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget v2, v1, Lf/k;->v:I

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, " resets, give up"

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v3, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iput v5, v1, Lf/k;->v:I

    .line 133
    .line 134
    invoke-virtual {v1}, Lf/k;->n()V

    .line 135
    .line 136
    .line 137
    const-wide/16 v2, 0x3e8

    .line 138
    .line 139
    invoke-virtual {v1, v2, v3}, Lf/k;->e(J)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->B()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const/4 v2, 0x5

    .line 150
    if-ne v0, v2, :cond_4

    .line 151
    .line 152
    iput v5, v1, Lf/k;->u:I

    .line 153
    .line 154
    iput v5, v1, Lf/k;->v:I

    .line 155
    .line 156
    :cond_4
    :goto_0
    return-void

    .line 157
    :goto_1
    check-cast v1, Lf/y;

    .line 158
    .line 159
    iget-object v0, v1, Lf/y;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->g:Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

    .line 162
    .line 163
    iget v1, p0, Lf/c;->c:I

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->handleNavigationFocusRequest(I)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
