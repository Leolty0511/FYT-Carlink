.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DOCK_EVENT"

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v3, :cond_6

    const-string v2, "android.intent.extra.DOCK_STATE"

    .line 3
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v7, :cond_1

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v8, 0x9

    goto :goto_0

    :cond_1
    const/16 v8, 0x8

    goto :goto_0

    :cond_2
    const/4 v8, 0x6

    goto :goto_0

    :cond_3
    const/4 v8, 0x7

    :goto_0
    if-eq v0, v7, :cond_5

    if-nez v0, :cond_4

    .line 4
    iget-object v2, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)I

    move-result v2

    if-eq v2, v7, :cond_5

    .line 5
    :cond_4
    invoke-static {v7, v8}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6
    :cond_5
    iget-object v2, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2, v0}, Landroid/media/AudioService;->access$7502(Landroid/media/AudioService;I)I

    goto/16 :goto_c

    :cond_6
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v2, "android.bluetooth.profile.extra.STATE"

    .line 8
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x10

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    .line 9
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_7

    return-void

    .line 10
    :cond_7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 12
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    const/16 v9, 0x404

    if-eq v7, v9, :cond_9

    const/16 v9, 0x408

    if-eq v7, v9, :cond_9

    const/16 v9, 0x420

    if-eq v7, v9, :cond_8

    goto :goto_1

    :cond_8
    const/16 v3, 0x40

    goto :goto_1

    :cond_9
    const/16 v3, 0x20

    .line 13
    :cond_a
    :goto_1
    invoke-static {v4}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v4, ""

    :cond_b
    if-ne v2, v5, :cond_c

    goto :goto_2

    :cond_c
    move v6, v8

    .line 14
    :goto_2
    iget-object v2, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2, v6, v3, v4}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;ZILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 15
    iget-object v2, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    if-eqz v6, :cond_d

    .line 16
    :try_start_0
    iget-object v3, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v3, v0}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_3

    .line 17
    :cond_d
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 18
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$6600(Landroid/media/AudioService;)V

    .line 19
    :goto_3
    monitor-exit v2

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_e
    const-string v3, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v9, -0x1

    if-nez v3, :cond_1a

    const-string v3, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_8

    :cond_f
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 22
    iget-object v2, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    const-string v2, "android.bluetooth.profile.extra.STATE"

    .line 23
    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 24
    iget-object v2, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v10, 0x5

    if-nez v2, :cond_11

    iget-object v2, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    if-eq v2, v7, :cond_10

    iget-object v2, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    if-eq v2, v6, :cond_10

    iget-object v2, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    if-ne v2, v10, :cond_11

    :cond_10
    move v2, v6

    goto :goto_4

    :cond_11
    move v2, v8

    :goto_4
    packed-switch v0, :pswitch_data_0

    goto :goto_6

    .line 25
    :pswitch_0
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v0

    if-eq v0, v7, :cond_12

    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v0

    if-eq v0, v10, :cond_12

    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v0

    if-eq v0, v4, :cond_12

    .line 26
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0, v5}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    :cond_12
    :goto_5
    move v8, v2

    goto :goto_7

    .line 27
    :pswitch_1
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v0

    if-eq v0, v7, :cond_13

    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v0

    if-eq v0, v10, :cond_13

    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v0

    if-eq v0, v4, :cond_13

    .line 28
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0, v5}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    goto :goto_6

    .line 29
    :pswitch_2
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0, v8}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 30
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0, v8, v8}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    move v6, v8

    goto :goto_5

    :cond_13
    :goto_6
    move v6, v9

    .line 31
    :goto_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_1e

    .line 32
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0, v6}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    .line 34
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    iget-object v2, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2, v0}, Landroid/media/AudioService;->access$7700(Landroid/media/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    .line 36
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_14
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 38
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0, v6}, Landroid/media/AudioService;->access$4502(Landroid/media/AudioService;Z)Z

    .line 39
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v10

    const/4 v11, 0x7

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 40
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-static {v0, v2}, Landroid/media/AudioService;->access$7802(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 41
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0, v9}, Landroid/media/AudioService;->access$8002(Landroid/media/AudioService;I)I

    .line 42
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$6600(Landroid/media/AudioService;)V

    .line 43
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Z

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    .line 45
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    iget-object v2, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2, v0}, Landroid/media/AudioService;->access$7700(Landroid/media/AudioService;Landroid/content/Intent;)V

    .line 47
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 48
    iget-object v2, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v3}, Landroid/media/AudioService;->access$8100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 49
    :cond_15
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7530

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_c

    :cond_16
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "screen_state=on"

    .line 51
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_17
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "screen_state=off"

    .line 53
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_18
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 55
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v2, p1

    invoke-static {v0, v2}, Landroid/media/AudioService;->access$8200(Landroid/media/AudioService;Landroid/content/Context;)V

    goto/16 :goto_c

    :cond_19
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 57
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v8

    const/16 v9, 0xf

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 58
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->discardAudioFocusOwner()V

    .line 59
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0, v6}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;Z)V

    .line 60
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v8

    const/16 v9, 0xa

    const/4 v10, 0x2

    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v13, v0, v7

    invoke-static/range {v8 .. v14}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_c

    :cond_1a
    :goto_8
    const-string/jumbo v3, "state"

    .line 61
    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "card"

    .line 62
    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "device"

    .line 63
    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v4, v9, :cond_1b

    if-ne v0, v9, :cond_1b

    const-string v5, ""

    goto :goto_9

    .line 64
    :cond_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "card="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";device="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_9
    const-string v6, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    .line 65
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v6, 0x2000

    goto :goto_a

    :cond_1c
    const/16 v6, 0x4000

    :goto_a
    const-string v7, "AudioService"

    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Broadcast Receiver: Got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "ACTION_USB_AUDIO_ACCESSORY_PLUG"

    goto :goto_b

    :cond_1d
    const-string v2, "ACTION_USB_AUDIO_DEVICE_PLUG"

    :goto_b
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", card: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", device: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, v1, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0, v6, v3, v5}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    :cond_1e
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
