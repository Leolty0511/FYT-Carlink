.class public Lcom/google/android/projection/common/UsbInputReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/common/UsbInputReader$RawUsbInputReader;
    }
.end annotation


# instance fields
.field private final bufferFragment:[B

.field private fragBufferEndPosition:I

.field private fragBufferStartPosition:I

.field private final minBufferLength:I

.field private final usbInputReader:Lcom/google/android/projection/common/UsbInputReader$RawUsbInputReader;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/common/UsbInputReader$RawUsbInputReader;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferEndPosition:I

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferStartPosition:I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/projection/common/UsbInputReader;->usbInputReader:Lcom/google/android/projection/common/UsbInputReader$RawUsbInputReader;

    .line 10
    .line 11
    iput p2, p0, Lcom/google/android/projection/common/UsbInputReader;->minBufferLength:I

    .line 12
    .line 13
    mul-int/lit8 p2, p2, 0x2

    .line 14
    .line 15
    new-array p1, p2, [B

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/projection/common/UsbInputReader;->bufferFragment:[B

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferEndPosition:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferStartPosition:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/projection/common/UsbInputReader;->bufferFragment:[B

    .line 9
    .line 10
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-static {v2, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    if-lt v0, p3, :cond_0

    .line 18
    .line 19
    iget p1, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferStartPosition:I

    .line 20
    .line 21
    add-int/2addr p1, p3

    .line 22
    iput p1, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferStartPosition:I

    .line 23
    .line 24
    return p3

    .line 25
    :cond_0
    sub-int v1, p3, v0

    .line 26
    .line 27
    add-int/2addr p2, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, p3

    .line 30
    :goto_0
    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferEndPosition:I

    .line 32
    .line 33
    iput v0, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferStartPosition:I

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :goto_1
    iget v3, p0, Lcom/google/android/projection/common/UsbInputReader;->minBufferLength:I

    .line 40
    .line 41
    const-string v4, "read failed "

    .line 42
    .line 43
    const-string v5, "interrupted"

    .line 44
    .line 45
    if-le v1, v3, :cond_5

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_4

    .line 52
    .line 53
    iget-object v3, p0, Lcom/google/android/projection/common/UsbInputReader;->usbInputReader:Lcom/google/android/projection/common/UsbInputReader$RawUsbInputReader;

    .line 54
    .line 55
    invoke-interface {v3, p1, p2, v1}, Lcom/google/android/projection/common/UsbInputReader$RawUsbInputReader;->read([BII)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-lez v3, :cond_2

    .line 60
    .line 61
    add-int/2addr p2, v3

    .line 62
    sub-int/2addr v1, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    if-ltz v3, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 68
    .line 69
    invoke-static {v4, v3}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 78
    .line 79
    invoke-direct {p1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_5
    :goto_2
    iget v3, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferEndPosition:I

    .line 84
    .line 85
    if-le v1, v3, :cond_9

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_8

    .line 92
    .line 93
    iget-object v3, p0, Lcom/google/android/projection/common/UsbInputReader;->usbInputReader:Lcom/google/android/projection/common/UsbInputReader$RawUsbInputReader;

    .line 94
    .line 95
    iget-object v6, p0, Lcom/google/android/projection/common/UsbInputReader;->bufferFragment:[B

    .line 96
    .line 97
    iget v7, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferEndPosition:I

    .line 98
    .line 99
    iget v8, p0, Lcom/google/android/projection/common/UsbInputReader;->minBufferLength:I

    .line 100
    .line 101
    invoke-interface {v3, v6, v7, v8}, Lcom/google/android/projection/common/UsbInputReader$RawUsbInputReader;->read([BII)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-lez v3, :cond_6

    .line 106
    .line 107
    iget v6, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferEndPosition:I

    .line 108
    .line 109
    add-int/2addr v6, v3

    .line 110
    iput v6, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferEndPosition:I

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    if-ltz v3, :cond_7

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 117
    .line 118
    invoke-static {v4, v3}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 127
    .line 128
    invoke-direct {p1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    :cond_9
    iget-object v2, p0, Lcom/google/android/projection/common/UsbInputReader;->bufferFragment:[B

    .line 133
    .line 134
    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    .line 136
    .line 137
    iget p1, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferStartPosition:I

    .line 138
    .line 139
    add-int/2addr p1, v1

    .line 140
    iput p1, p0, Lcom/google/android/projection/common/UsbInputReader;->fragBufferStartPosition:I

    .line 141
    .line 142
    return p3
.end method
