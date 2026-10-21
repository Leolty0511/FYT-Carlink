.class public final Lf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lf/k;


# direct methods
.method public synthetic constructor <init>(Lf/k;I)V
    .locals 0

    iput p2, p0, Lf/b;->b:I

    iput-object p1, p0, Lf/b;->c:Lf/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, p0, Lf/b;->b:I

    .line 7
    .line 8
    iget-object v2, p0, Lf/b;->c:Lf/k;

    .line 9
    .line 10
    const/4 v3, 0x5

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    const-string v0, "Auto"

    .line 16
    .line 17
    const-string v1, "=================>>> updateState2DisConnected"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget v0, v2, Lf/k;->h:I

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    if-ltz v0, :cond_0

    .line 26
    .line 27
    iput v1, v2, Lf/k;->h:I

    .line 28
    .line 29
    :cond_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lg/b;->t:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lf/k;->b()V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    const/4 v1, 0x3

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v0, v0, Lg/b;->s:Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_1
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v1, v1, Lg/b;->s:Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v0, v0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 98
    .line 99
    const/4 v1, 0x4

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :pswitch_2
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-object v1, v1, Lg/b;->s:Landroidx/lifecycle/MutableLiveData;

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v0, v0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 126
    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :goto_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->B()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eq v0, v3, :cond_1

    .line 142
    .line 143
    invoke-virtual {v2}, Lf/k;->n()V

    .line 144
    .line 145
    .line 146
    const-wide/16 v0, 0x64

    .line 147
    .line 148
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    :goto_1
    invoke-virtual {v2}, Lf/k;->o()Z

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lf/k;->d()V

    .line 160
    .line 161
    .line 162
    :cond_1
    return-void

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
