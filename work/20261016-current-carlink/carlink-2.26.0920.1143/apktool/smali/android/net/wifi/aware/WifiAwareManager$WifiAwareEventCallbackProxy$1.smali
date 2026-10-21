.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;Landroid/os/Binder;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

.field final synthetic val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

.field final synthetic val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;Landroid/os/Looper;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    iput-object p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

    iput-object p4, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->access$200(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 12
    .line 13
    const-string v1, "WifiAwareManager"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string p1, "WifiAwareEventCallbackProxy: handleMessage post GC"

    .line 18
    .line 19
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 24
    .line 25
    if-eqz v2, :cond_a

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    if-eq v2, v0, :cond_9

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    if-eq v2, v0, :cond_7

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    const-string v3, ": no listener registered (anymore)"

    .line 35
    .line 36
    const-string v4, "CALLBACK_RANGING_SUCCESS rangingId="

    .line 37
    .line 38
    if-eq v2, v0, :cond_5

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    if-eq v2, v0, :cond_3

    .line 42
    .line 43
    const/4 v0, 0x5

    .line 44
    if-eq v2, v0, :cond_1

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    .line 49
    .line 50
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->getAndRemoveRangingListener(I)Landroid/net/wifi/RttManager$RttListener;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_2
    invoke-interface {v0}, Landroid/net/wifi/RttManager$RttListener;->onAborted()V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    .line 86
    .line 87
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->getAndRemoveRangingListener(I)Landroid/net/wifi/RttManager$RttListener;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-nez v0, :cond_4

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 117
    .line 118
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {v0, v1, p1}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    .line 127
    .line 128
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->getAndRemoveRangingListener(I)Landroid/net/wifi/RttManager$RttListener;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-nez v0, :cond_6

    .line 135
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p1, Landroid/net/wifi/RttManager$ParcelableRttResults;

    .line 160
    .line 161
    iget-object p1, p1, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 162
    .line 163
    invoke-interface {v0, p1}, Landroid/net/wifi/RttManager$RttListener;->onSuccess([Landroid/net/wifi/RttManager$RttResult;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    .line 168
    .line 169
    if-nez v0, :cond_8

    .line 170
    .line 171
    const-string p1, "CALLBACK_IDENTITY_CHANGED: null listener."

    .line 172
    .line 173
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p1, [B

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/IdentityChangedListener;->onIdentityChanged([B)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_9
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    .line 186
    .line 187
    invoke-static {p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->access$200(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Ljava/lang/ref/WeakReference;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/net/wifi/aware/AttachCallback;->onAttachFailed()V

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_a
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

    .line 201
    .line 202
    new-instance v2, Landroid/net/wifi/aware/WifiAwareSession;

    .line 203
    .line 204
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    .line 205
    .line 206
    invoke-static {v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->access$300(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Landroid/os/Binder;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 211
    .line 212
    invoke-direct {v2, v0, v3, p1}, Landroid/net/wifi/aware/WifiAwareSession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Binder;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2}, Landroid/net/wifi/aware/AttachCallback;->onAttached(Landroid/net/wifi/aware/WifiAwareSession;)V

    .line 216
    .line 217
    .line 218
    :goto_0
    return-void
.end method
