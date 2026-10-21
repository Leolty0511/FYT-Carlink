.class public Landroid/renderscript/ProgramFragment$Builder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramFragment;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    .line 7
    .line 8
    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    new-array v0, v0, [J

    .line 20
    .line 21
    new-array v1, v1, [Ljava/lang/String;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    move v4, v3

    .line 26
    :goto_0
    iget v5, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    .line 27
    .line 28
    if-ge v3, v5, :cond_0

    .line 29
    .line 30
    add-int/lit8 v5, v4, 0x1

    .line 31
    .line 32
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    .line 33
    .line 34
    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    .line 35
    .line 36
    int-to-long v6, v6

    .line 37
    aput-wide v6, v0, v4

    .line 38
    .line 39
    add-int/lit8 v4, v5, 0x1

    .line 40
    .line 41
    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    .line 42
    .line 43
    aget-object v6, v6, v3

    .line 44
    .line 45
    iget-object v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 46
    .line 47
    invoke-virtual {v6, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    aput-wide v6, v0, v5

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move v3, v2

    .line 57
    :goto_1
    iget v5, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    .line 58
    .line 59
    if-ge v3, v5, :cond_1

    .line 60
    .line 61
    add-int/lit8 v5, v4, 0x1

    .line 62
    .line 63
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    .line 64
    .line 65
    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    .line 66
    .line 67
    int-to-long v6, v6

    .line 68
    aput-wide v6, v0, v4

    .line 69
    .line 70
    add-int/lit8 v4, v5, 0x1

    .line 71
    .line 72
    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    .line 73
    .line 74
    aget-object v6, v6, v3

    .line 75
    .line 76
    iget-object v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    aput-wide v6, v0, v5

    .line 83
    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    move v3, v2

    .line 88
    :goto_2
    iget v5, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 89
    .line 90
    if-ge v3, v5, :cond_2

    .line 91
    .line 92
    add-int/lit8 v5, v4, 0x1

    .line 93
    .line 94
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    .line 95
    .line 96
    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    .line 97
    .line 98
    int-to-long v6, v6

    .line 99
    aput-wide v6, v0, v4

    .line 100
    .line 101
    add-int/lit8 v4, v5, 0x1

    .line 102
    .line 103
    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    .line 104
    .line 105
    aget-object v6, v6, v3

    .line 106
    .line 107
    iget-object v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 108
    .line 109
    invoke-virtual {v6, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v6

    .line 113
    aput-wide v6, v0, v5

    .line 114
    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    :goto_3
    iget v3, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 119
    .line 120
    if-ge v2, v3, :cond_3

    .line 121
    .line 122
    add-int/lit8 v3, v4, 0x1

    .line 123
    .line 124
    sget-object v5, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    .line 125
    .line 126
    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    .line 127
    .line 128
    int-to-long v5, v5

    .line 129
    aput-wide v5, v0, v4

    .line 130
    .line 131
    add-int/lit8 v4, v3, 0x1

    .line 132
    .line 133
    iget-object v5, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    .line 134
    .line 135
    aget-object v5, v5, v2

    .line 136
    .line 137
    iget v5, v5, Landroid/renderscript/Program$TextureType;->mID:I

    .line 138
    .line 139
    int-to-long v5, v5

    .line 140
    aput-wide v5, v0, v3

    .line 141
    .line 142
    iget-object v3, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    .line 143
    .line 144
    aget-object v3, v3, v2

    .line 145
    .line 146
    aput-object v3, v1, v2

    .line 147
    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_3
    iget-object v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 152
    .line 153
    iget-object v3, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v2, v3, v1, v0}, Landroid/renderscript/RenderScript;->nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[J)J

    .line 156
    .line 157
    .line 158
    move-result-wide v0

    .line 159
    new-instance v2, Landroid/renderscript/ProgramFragment;

    .line 160
    .line 161
    iget-object v3, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 162
    .line 163
    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/ProgramFragment;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v2}, Landroid/renderscript/Program$BaseProgramBuilder;->initProgram(Landroid/renderscript/Program;)V

    .line 167
    .line 168
    .line 169
    return-object v2
.end method
