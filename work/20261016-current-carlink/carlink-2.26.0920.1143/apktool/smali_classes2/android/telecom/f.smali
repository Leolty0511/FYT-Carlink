.class public final synthetic Landroid/telecom/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/f;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroid/telecom/f;->e:Ljava/lang/Object;

    iput p3, p0, Landroid/telecom/f;->c:I

    return-void
.end method

.method public synthetic constructor <init>([BILl/b;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/f;->d:Ljava/lang/Object;

    iput p2, p0, Landroid/telecom/f;->c:I

    iput-object p3, p0, Landroid/telecom/f;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Landroid/telecom/f;->b:I

    .line 2
    .line 3
    iget v1, p0, Landroid/telecom/f;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Landroid/telecom/f;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/telecom/f;->d:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    check-cast v3, Landroid/telecom/RemoteConnection$Callback;

    .line 14
    .line 15
    check-cast v2, Landroid/telecom/RemoteConnection;

    .line 16
    .line 17
    invoke-static {v3, v2, v1}, Landroid/telecom/RemoteConnection;->c(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :goto_0
    check-cast v3, [B

    .line 22
    .line 23
    check-cast v2, Ll/b;

    .line 24
    .line 25
    sget v0, Ll/a;->f:I

    .line 26
    .line 27
    const-string v0, "$byteArray"

    .line 28
    .line 29
    invoke-static {v3, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v0, "this$0"

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v1}, Lt/c;->J([BI)[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v2, Ljava/lang/String;

    .line 43
    .line 44
    sget-object v4, Lf0/a;->a:Ljava/nio/charset/Charset;

    .line 45
    .line 46
    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "=======>>> read socket msg: "

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v2, "BluetoothUtils"

    .line 56
    .line 57
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    :try_start_0
    const-string v5, "CarplayServer.ICarplayService"

    .line 83
    .line 84
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 91
    .line 92
    .line 93
    const-string v1, "outparam"

    .line 94
    .line 95
    invoke-static {v4, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/16 v1, 0xe6

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2, v4}, Lh/c;->d(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto :goto_2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    .line 116
    :cond_0
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :cond_1
    :goto_3
    return-void

    .line 131
    :cond_2
    const-string v0, "me"

    .line 132
    .line 133
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const/4 v0, 0x0

    .line 137
    throw v0

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
