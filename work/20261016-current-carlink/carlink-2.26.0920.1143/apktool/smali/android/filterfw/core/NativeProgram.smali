.class public Landroid/filterfw/core/NativeProgram;
.super Landroid/filterfw/core/Program;
.source "SourceFile"


# instance fields
.field private mHasGetValueFunction:Z

.field private mHasInitFunction:Z

.field private mHasResetFunction:Z

.field private mHasSetValueFunction:Z

.field private mHasTeardownFunction:Z

.field private mTornDown:Z

.field private nativeProgramId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "filterfw"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasInitFunction:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasTeardownFunction:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasSetValueFunction:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasGetValueFunction:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasResetFunction:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->allocate()Z

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "lib"

    .line 21
    .line 22
    .line 23
    const-string v1, ".so"

    .line 24
    .line 25
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->openNativeLibrary(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const-string v0, "_process"

    .line 36
    .line 37
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeProgram;->bindProcessFunction(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const-string p1, "_init"

    .line 48
    .line 49
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->bindInitFunction(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput-boolean p1, p0, Landroid/filterfw/core/NativeProgram;->mHasInitFunction:Z

    .line 58
    .line 59
    const-string p1, "_teardown"

    .line 60
    .line 61
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->bindTeardownFunction(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput-boolean p1, p0, Landroid/filterfw/core/NativeProgram;->mHasTeardownFunction:Z

    .line 70
    .line 71
    const-string p1, "_setvalue"

    .line 72
    .line 73
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->bindSetValueFunction(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput-boolean p1, p0, Landroid/filterfw/core/NativeProgram;->mHasSetValueFunction:Z

    .line 82
    .line 83
    const-string p1, "_getvalue"

    .line 84
    .line 85
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->bindGetValueFunction(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iput-boolean p1, p0, Landroid/filterfw/core/NativeProgram;->mHasGetValueFunction:Z

    .line 94
    .line 95
    const-string p1, "_reset"

    .line 96
    .line 97
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->bindResetFunction(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iput-boolean p1, p0, Landroid/filterfw/core/NativeProgram;->mHasResetFunction:Z

    .line 106
    .line 107
    iget-boolean p1, p0, Landroid/filterfw/core/NativeProgram;->mHasInitFunction:Z

    .line 108
    .line 109
    if-eqz p1, :cond_1

    .line 110
    .line 111
    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->callNativeInit()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_0

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 119
    .line 120
    const-string p2, "Could not initialize NativeProgram!"

    .line 121
    .line 122
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    .line 128
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v2, "Could not find native program function name "

    .line 132
    .line 133
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v0, " in library "

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p1, "! This function is required!"

    .line 148
    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p2

    .line 160
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    .line 161
    .line 162
    const-string v0, "Could not find native library named \'"

    .line 163
    .line 164
    const-string v1, "\' required for native program!"

    .line 165
    .line 166
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p2
.end method

.method private native allocate()Z
.end method

.method private native bindGetValueFunction(Ljava/lang/String;)Z
.end method

.method private native bindInitFunction(Ljava/lang/String;)Z
.end method

.method private native bindProcessFunction(Ljava/lang/String;)Z
.end method

.method private native bindResetFunction(Ljava/lang/String;)Z
.end method

.method private native bindSetValueFunction(Ljava/lang/String;)Z
.end method

.method private native bindTeardownFunction(Ljava/lang/String;)Z
.end method

.method private native callNativeGetValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native callNativeInit()Z
.end method

.method private native callNativeProcess([Landroid/filterfw/core/NativeFrame;Landroid/filterfw/core/NativeFrame;)Z
.end method

.method private native callNativeReset()Z
.end method

.method private native callNativeSetValue(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native callNativeTeardown()Z
.end method

.method private native deallocate()Z
.end method

.method private native nativeInit()Z
.end method

.method private native openNativeLibrary(Ljava/lang/String;)Z
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/filterfw/core/NativeProgram;->tearDown()V

    return-void
.end method

.method public getHostValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasGetValueFunction:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->callNativeGetValue(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    const-string v0, "Attempting to get native variable, but native code does not define native getvalue function!"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string v0, "NativeProgram already torn down!"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    new-array v0, v0, [Landroid/filterfw/core/NativeFrame;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p1

    .line 10
    if-ge v1, v2, :cond_2

    .line 11
    .line 12
    aget-object v2, p1, v1

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    instance-of v3, v2, Landroid/filterfw/core/NativeFrame;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 22
    .line 23
    const-string p2, "NativeProgram got non-native frame as input "

    .line 24
    .line 25
    const-string v0, "!"

    .line 26
    .line 27
    invoke-static {p2, v1, v0}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    :goto_1
    check-cast v2, Landroid/filterfw/core/NativeFrame;

    .line 36
    .line 37
    aput-object v2, v0, v1

    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-eqz p2, :cond_4

    .line 43
    .line 44
    instance-of p1, p2, Landroid/filterfw/core/NativeFrame;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 50
    .line 51
    const-string p2, "NativeProgram got non-native output frame!"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_4
    :goto_2
    check-cast p2, Landroid/filterfw/core/NativeFrame;

    .line 58
    .line 59
    invoke-direct {p0, v0, p2}, Landroid/filterfw/core/NativeProgram;->callNativeProcess([Landroid/filterfw/core/NativeFrame;Landroid/filterfw/core/NativeFrame;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    return-void

    .line 66
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 67
    .line 68
    const-string p2, "Calling native process() caused error!"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 75
    .line 76
    const-string p2, "NativeProgram already torn down!"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasResetFunction:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->callNativeReset()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string v1, "Could not reset NativeProgram!"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public setHostValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasSetValueFunction:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/NativeProgram;->callNativeSetValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    const-string v0, "Error setting native value for variable \'"

    .line 23
    .line 24
    const-string v1, "\'!"

    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p2

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string p2, "Attempting to set native variable, but native code does not define native setvalue function!"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    const-string p2, "NativeProgram already torn down!"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public tearDown()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasTeardownFunction:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->callNativeTeardown()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    const-string v1, "Could not tear down NativeProgram!"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->deallocate()Z

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    .line 30
    .line 31
    return-void
.end method
