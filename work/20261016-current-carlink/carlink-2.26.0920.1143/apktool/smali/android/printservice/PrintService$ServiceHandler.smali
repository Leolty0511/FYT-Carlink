.class final Landroid/printservice/PrintService$ServiceHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/PrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x1

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x2

.field public static final MSG_ON_PRINTJOB_QUEUED:I = 0x9

.field public static final MSG_ON_REQUEST_CANCEL_PRINTJOB:I = 0xa

.field public static final MSG_REQUEST_CUSTOM_PRINTER_ICON:I = 0x7

.field public static final MSG_SET_CLIENT:I = 0xb

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x3

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0x6

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x4

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0x8

.field public static final MSG_VALIDATE_PRINTERS:I = 0x5


# instance fields
.field final synthetic this$0:Landroid/printservice/PrintService;


# direct methods
.method public constructor <init>(Landroid/printservice/PrintService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "Unknown message: "

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :pswitch_0
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 19
    .line 20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Landroid/printservice/IPrintServiceClient;

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/printservice/PrintService;->access$302(Landroid/printservice/PrintService;Landroid/printservice/IPrintServiceClient;)Landroid/printservice/IPrintServiceClient;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 28
    .line 29
    invoke-static {p1}, Landroid/printservice/PrintService;->access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/printservice/PrintService;->onConnected()V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/printservice/PrintService;->onDisconnected()V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Landroid/print/PrintJobInfo;

    .line 52
    .line 53
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 54
    .line 55
    new-instance v1, Landroid/printservice/PrintJob;

    .line 56
    .line 57
    invoke-static {v0}, Landroid/printservice/PrintService;->access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {v1, v0, p1, v2}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/printservice/PrintService;->onRequestCancelPrintJob(Landroid/printservice/PrintJob;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, Landroid/print/PrintJobInfo;

    .line 72
    .line 73
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 74
    .line 75
    new-instance v1, Landroid/printservice/PrintJob;

    .line 76
    .line 77
    invoke-static {v0}, Landroid/printservice/PrintService;->access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v1, v0, p1, v2}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/printservice/PrintService;->onPrintJobQueued(Landroid/printservice/PrintJob;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :pswitch_3
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 90
    .line 91
    invoke-static {v0}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Landroid/print/PrinterId;

    .line 100
    .line 101
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 102
    .line 103
    invoke-static {v0}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :pswitch_4
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 113
    .line 114
    invoke-static {v0}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    .line 120
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Landroid/print/PrinterId;

    .line 123
    .line 124
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 125
    .line 126
    invoke-static {v0}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, p1}, Landroid/printservice/PrinterDiscoverySession;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :pswitch_5
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 136
    .line 137
    invoke-static {v0}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_1

    .line 142
    .line 143
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p1, Landroid/print/PrinterId;

    .line 146
    .line 147
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 148
    .line 149
    invoke-static {v0}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0, p1}, Landroid/printservice/PrinterDiscoverySession;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :pswitch_6
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 159
    .line 160
    invoke-static {v0}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-eqz v0, :cond_1

    .line 165
    .line 166
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast p1, Ljava/util/List;

    .line 169
    .line 170
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 171
    .line 172
    invoke-static {v0}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0, p1}, Landroid/printservice/PrinterDiscoverySession;->validatePrinters(Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :pswitch_7
    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 181
    .line 182
    invoke-static {p1}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-eqz p1, :cond_1

    .line 187
    .line 188
    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 189
    .line 190
    invoke-static {p1}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterDiscovery()V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :pswitch_8
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 199
    .line 200
    invoke-static {v0}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-eqz v0, :cond_1

    .line 205
    .line 206
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast p1, Ljava/util/ArrayList;

    .line 209
    .line 210
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 211
    .line 212
    invoke-static {v0}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0, p1}, Landroid/printservice/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :pswitch_9
    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 221
    .line 222
    invoke-static {p1}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    if-eqz p1, :cond_1

    .line 227
    .line 228
    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 229
    .line 230
    invoke-static {p1}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p1}, Landroid/printservice/PrinterDiscoverySession;->destroy()V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 238
    .line 239
    const/4 v0, 0x0

    .line 240
    invoke-static {p1, v0}, Landroid/printservice/PrintService;->access$202(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :pswitch_a
    iget-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 245
    .line 246
    invoke-virtual {p1}, Landroid/printservice/PrintService;->onCreatePrinterDiscoverySession()Landroid/printservice/PrinterDiscoverySession;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    if-eqz p1, :cond_3

    .line 251
    .line 252
    invoke-virtual {p1}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 257
    .line 258
    invoke-static {v1}, Landroid/printservice/PrintService;->access$100(Landroid/printservice/PrintService;)I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eq v0, v1, :cond_2

    .line 263
    .line 264
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 265
    .line 266
    invoke-static {v0, p1}, Landroid/printservice/PrintService;->access$202(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 270
    .line 271
    invoke-virtual {p1}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    invoke-static {v0, v1}, Landroid/printservice/PrintService;->access$102(Landroid/printservice/PrintService;I)I

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 279
    .line 280
    invoke-static {v0}, Landroid/printservice/PrintService;->access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {p1, v0}, Landroid/printservice/PrinterDiscoverySession;->setObserver(Landroid/printservice/IPrintServiceClient;)V

    .line 285
    .line 286
    .line 287
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 289
    .line 290
    const-string v0, "cannot reuse session instances"

    .line 291
    .line 292
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw p1

    .line 296
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 297
    .line 298
    const-string/jumbo v0, "session cannot be null"

    .line 299
    .line 300
    .line 301
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw p1

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
