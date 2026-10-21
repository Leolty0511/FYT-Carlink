.class Landroid/media/midi/MidiOutputPort$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiOutputPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiOutputPort;


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiOutputPort;)V
    .locals 0

    iput-object p1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const-string v0, "MidiOutputPort"

    .line 2
    .line 3
    const/16 v1, 0x400

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    .line 8
    .line 9
    invoke-static {v2}, Landroid/media/midi/MidiOutputPort;->access$000(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-gez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-static {v1, v2}, Landroid/media/midi/MidiPortImpl;->getPacketType([BI)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    if-eq v3, v4, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq v3, v2, :cond_1

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "Unknown packet type "

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    .line 52
    .line 53
    invoke-static {v2}, Landroid/media/midi/MidiOutputPort;->access$100(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/media/midi/MidiReceiver;->flush()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {v1, v2}, Landroid/media/midi/MidiPortImpl;->getDataOffset([BI)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-static {v1, v2}, Landroid/media/midi/MidiPortImpl;->getDataSize([BI)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-static {v1, v2}, Landroid/media/midi/MidiPortImpl;->getPacketTimestamp([BI)J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    iget-object v2, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    .line 74
    .line 75
    invoke-static {v2}, Landroid/media/midi/MidiOutputPort;->access$100(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    move-object v3, v1

    .line 80
    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto :goto_2

    .line 86
    :catch_0
    move-exception v1

    .line 87
    :try_start_1
    const-string/jumbo v2, "read failed"

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    :goto_1
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    .line 94
    .line 95
    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->access$000(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :goto_2
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    .line 104
    .line 105
    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->access$000(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 110
    .line 111
    .line 112
    throw v0
.end method
