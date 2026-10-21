.class Landroid/net/wifi/WifiScanner$ServiceHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiScanner;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiScanner;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const v1, 0x11002

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_5

    .line 7
    .line 8
    const v1, 0x11004

    .line 9
    .line 10
    .line 11
    if-eq v0, v1, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    .line 14
    .line 15
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/net/wifi/WifiScanner;->access$100(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 25
    .line 26
    const v2, 0x27005

    .line 27
    .line 28
    .line 29
    if-eq v1, v2, :cond_3

    .line 30
    .line 31
    const v2, 0x27017

    .line 32
    .line 33
    .line 34
    if-eq v1, v2, :cond_2

    .line 35
    .line 36
    const v2, 0x2701a

    .line 37
    .line 38
    .line 39
    if-eq v1, v2, :cond_1

    .line 40
    .line 41
    packed-switch v1, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    packed-switch v1, :pswitch_data_1

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Landroid/net/wifi/ScanResult;

    .line 51
    .line 52
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .line 53
    .line 54
    invoke-interface {v0, p1}, Landroid/net/wifi/WifiScanner$ScanListener;->onFullResult(Landroid/net/wifi/ScanResult;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_1
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .line 59
    .line 60
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 61
    .line 62
    invoke-interface {v0, p1}, Landroid/net/wifi/WifiScanner$ScanListener;->onPeriodChanged(I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Landroid/net/wifi/WifiScanner$OperationResult;

    .line 69
    .line 70
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    .line 71
    .line 72
    iget v2, v1, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    .line 73
    .line 74
    iget-object v1, v1, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {v0, v2, v1}, Landroid/net/wifi/WifiScanner$ActionListener;->onFailure(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    .line 80
    .line 81
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 82
    .line 83
    invoke-static {v0, p1}, Landroid/net/wifi/WifiScanner;->access$200(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_3
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    .line 88
    .line 89
    invoke-interface {v0}, Landroid/net/wifi/WifiScanner$ActionListener;->onSuccess()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_4
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .line 94
    .line 95
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {v0, p1}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onQuiescence([Landroid/net/wifi/ScanResult;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_5
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .line 108
    .line 109
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p1, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {v0, p1}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onChanging([Landroid/net/wifi/ScanResult;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_6
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    .line 122
    .line 123
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p1, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {v0, p1}, Landroid/net/wifi/WifiScanner$BssidListener;->onLost([Landroid/net/wifi/ScanResult;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_7
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    .line 136
    .line 137
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p1, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-interface {v0, p1}, Landroid/net/wifi/WifiScanner$BssidListener;->onFound([Landroid/net/wifi/ScanResult;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_1
    check-cast v0, Landroid/net/wifi/WifiScanner$PnoScanListener;

    .line 150
    .line 151
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p1, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-interface {v0, p1}, Landroid/net/wifi/WifiScanner$PnoScanListener;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    .line 164
    .line 165
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 166
    .line 167
    invoke-static {v0, p1}, Landroid/net/wifi/WifiScanner;->access$200(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    :goto_0
    return-void

    .line 171
    :cond_3
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .line 172
    .line 173
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p1, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ParcelableScanData;->getResults()[Landroid/net/wifi/WifiScanner$ScanData;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-interface {v0, p1}, Landroid/net/wifi/WifiScanner$ScanListener;->onResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_4
    const-string p1, "WifiScanner"

    .line 186
    .line 187
    const-string v0, "Channel connection lost"

    .line 188
    .line 189
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    .line 193
    .line 194
    const/4 v0, 0x0

    .line 195
    invoke-static {p1, v0}, Landroid/net/wifi/WifiScanner;->access$002(Landroid/net/wifi/WifiScanner;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 203
    .line 204
    .line 205
    :cond_5
    return-void

    .line 206
    nop

    .line 207
    :pswitch_data_0
    .packed-switch 0x27009
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :pswitch_data_1
    .packed-switch 0x2700f
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
