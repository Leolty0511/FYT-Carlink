.class public Landroid/app/VoiceInteractor$PickOptionRequest;
.super Landroid/app/VoiceInteractor$Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PickOptionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    }
.end annotation


# instance fields
.field final mExtras:Landroid/os/Bundle;

.field final mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

.field final mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method public constructor <init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 3
    iput-object p2, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 4
    iput-object p3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Landroid/app/VoiceInteractor$Prompt;

    invoke-direct {v0, p1}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 7
    iput-object p2, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 8
    iput-object p3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/VoiceInteractor$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "mPrompt="

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 14
    .line 15
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p2, "Options:"

    .line 26
    .line 27
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    move p4, p2

    .line 32
    :goto_0
    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 33
    .line 34
    array-length v1, v0

    .line 35
    if-ge p4, v1, :cond_2

    .line 36
    .line 37
    aget-object v0, v0, p4

    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "  #"

    .line 43
    .line 44
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 48
    .line 49
    .line 50
    const-string v1, ":"

    .line 51
    .line 52
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "    mLabel="

    .line 59
    .line 60
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mLabel:Ljava/lang/CharSequence;

    .line 64
    .line 65
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "    mIndex="

    .line 72
    .line 73
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget v1, v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mIndex:I

    .line 77
    .line 78
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    .line 82
    .line 83
    if-eqz v1, :cond_0

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-lez v1, :cond_0

    .line 90
    .line 91
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v1, "    Synonyms:"

    .line 95
    .line 96
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    move v1, p2

    .line 100
    :goto_1
    iget-object v2, v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-ge v1, v2, :cond_0

    .line 107
    .line 108
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v2, "      #"

    .line 112
    .line 113
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 117
    .line 118
    .line 119
    const-string v2, ": "

    .line 120
    .line 121
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v2, v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    add-int/lit8 v1, v1, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_0
    iget-object v1, v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mExtras:Landroid/os/Bundle;

    .line 137
    .line 138
    if-eqz v1, :cond_1

    .line 139
    .line 140
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v1, "    mExtras="

    .line 144
    .line 145
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mExtras:Landroid/os/Bundle;

    .line 149
    .line 150
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_1
    add-int/lit8 p4, p4, 0x1

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_2
    iget-object p2, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    .line 157
    .line 158
    if-eqz p2, :cond_3

    .line 159
    .line 160
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string/jumbo p1, "mExtras="

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    .line 170
    .line 171
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_3
    return-void
.end method

.method public getRequestTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "PickOption"

    return-object v0
.end method

.method public onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 6

    iget-object v3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    iget-object v4, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    iget-object v5, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractor;->startPickOption(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object p1

    return-object p1
.end method
