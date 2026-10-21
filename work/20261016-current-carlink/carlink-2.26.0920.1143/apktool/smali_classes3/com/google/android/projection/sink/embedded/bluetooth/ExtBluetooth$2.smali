.class Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->startRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$2;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const-string v0, "AHU.ExBT"

    .line 2
    .line 3
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$2;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->read_serial:Z

    .line 6
    .line 7
    if-eqz v2, :cond_3

    .line 8
    .line 9
    const/16 v2, 0x80

    .line 10
    .line 11
    new-array v2, v2, [B

    .line 12
    .line 13
    :try_start_0
    iget-object v1, v1, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->input:Ljava/io/FileInputStream;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuffer;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    move v5, v4

    .line 28
    :goto_1
    if-ge v5, v1, :cond_1

    .line 29
    .line 30
    const-string v6, "%02X "

    .line 31
    .line 32
    const/4 v7, 0x1

    .line 33
    new-array v7, v7, [Ljava/lang/Object;

    .line 34
    .line 35
    aget-byte v8, v2, v5

    .line 36
    .line 37
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    aput-object v8, v7, v4

    .line 42
    .line 43
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v6, "----------------->> 00 msg: "

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move v3, v4

    .line 74
    :goto_2
    if-ge v3, v1, :cond_0

    .line 75
    .line 76
    iget-object v5, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$2;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 77
    .line 78
    iget-object v5, v5, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->pack:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;

    .line 79
    .line 80
    aget-byte v6, v2, v3

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->loading(B)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    new-instance v5, Ljava/lang/String;

    .line 89
    .line 90
    iget-object v6, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$2;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 91
    .line 92
    iget-object v6, v6, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->pack:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;

    .line 93
    .line 94
    iget-object v7, v6, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->data:[B

    .line 95
    .line 96
    iget-object v6, v6, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->loaded:Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-direct {v5, v7, v4, v6}, Ljava/lang/String;-><init>([BII)V

    .line 103
    .line 104
    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v7, "----------------->> msg: "

    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    iget-object v6, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$2;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 126
    .line 127
    invoke-virtual {v6, v5}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->parseBtInfo(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    iget-object v5, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$2;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 131
    .line 132
    iget-object v5, v5, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->pack:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;

    .line 133
    .line 134
    invoke-virtual {v5}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :catch_0
    move-exception v1

    .line 141
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_3
    return-void
.end method
