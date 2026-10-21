.class public Landroid/net/lowpan/LowpanException;
.super Landroid/util/AndroidException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_5

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x7

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/net/lowpan/LowpanRuntimeException;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :pswitch_0
    new-instance v0, Landroid/net/lowpan/NetworkAlreadyExistsException;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Landroid/net/lowpan/NetworkAlreadyExistsException;-><init>(Ljava/lang/Exception;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :pswitch_1
    new-instance v0, Landroid/net/lowpan/JoinFailedAtAuthException;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedAtAuthException;-><init>(Ljava/lang/Exception;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :pswitch_2
    new-instance v0, Landroid/net/lowpan/JoinFailedAtScanException;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedAtScanException;-><init>(Ljava/lang/Exception;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :pswitch_3
    new-instance v0, Landroid/net/lowpan/JoinFailedException;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedException;-><init>(Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :pswitch_4
    new-instance v0, Landroid/net/lowpan/LowpanException;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string v1, "Feature not supported"

    .line 62
    .line 63
    :goto_0
    invoke-direct {v0, v1, p0}, Landroid/net/lowpan/LowpanException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :pswitch_5
    new-instance v0, Landroid/net/lowpan/OperationCanceledException;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Landroid/net/lowpan/OperationCanceledException;-><init>(Ljava/lang/Exception;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_1
    new-instance v0, Landroid/net/lowpan/LowpanRuntimeException;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const-string v1, "NCP problem"

    .line 87
    .line 88
    :goto_1
    invoke-direct {v0, v1, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_3
    new-instance v0, Landroid/net/lowpan/WrongStateException;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Landroid/net/lowpan/WrongStateException;-><init>(Ljava/lang/Exception;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_4
    new-instance v0, Landroid/net/lowpan/InterfaceDisabledException;

    .line 99
    .line 100
    invoke-direct {v0, p0}, Landroid/net/lowpan/InterfaceDisabledException;-><init>(Ljava/lang/Exception;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_5
    new-instance v0, Landroid/net/lowpan/LowpanRuntimeException;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    goto :goto_2

    .line 117
    :cond_6
    const-string v1, "Invalid argument"

    .line 118
    .line 119
    :goto_2
    invoke-direct {v0, v1, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
