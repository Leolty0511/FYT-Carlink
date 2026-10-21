.class final enum Lcom/android/internal/app/ResolverActivity$ActionTitle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/app/ResolverActivity$ActionTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;


# instance fields
.field public final action:Ljava/lang/String;

.field public final labelRes:I

.field public final namedTitleRes:I

.field public final titleRes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 2
    .line 3
    const-string v1, "VIEW"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "android.intent.action.VIEW"

    .line 7
    .line 8
    const v4, 0x1040694

    .line 9
    .line 10
    .line 11
    const v5, 0x1040696

    .line 12
    .line 13
    .line 14
    const v6, 0x1040695

    .line 15
    .line 16
    .line 17
    move-object v0, v7

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 19
    .line 20
    .line 21
    sput-object v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 22
    .line 23
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 24
    .line 25
    const-string v9, "EDIT"

    .line 26
    .line 27
    const/4 v10, 0x1

    .line 28
    const-string v11, "android.intent.action.EDIT"

    .line 29
    .line 30
    const v12, 0x1040685

    .line 31
    .line 32
    .line 33
    const v13, 0x1040687

    .line 34
    .line 35
    .line 36
    const v14, 0x1040686

    .line 37
    .line 38
    .line 39
    move-object v8, v0

    .line 40
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 44
    .line 45
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 46
    .line 47
    const-string v16, "SEND"

    .line 48
    .line 49
    const/16 v17, 0x2

    .line 50
    .line 51
    const-string v18, "android.intent.action.SEND"

    .line 52
    .line 53
    const v19, 0x104068e

    .line 54
    .line 55
    .line 56
    const v20, 0x1040690

    .line 57
    .line 58
    .line 59
    const v21, 0x104068f

    .line 60
    .line 61
    .line 62
    move-object v15, v1

    .line 63
    invoke-direct/range {v15 .. v21}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 64
    .line 65
    .line 66
    sput-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 67
    .line 68
    new-instance v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 69
    .line 70
    const-string v9, "SENDTO"

    .line 71
    .line 72
    const/4 v10, 0x3

    .line 73
    const-string v11, "android.intent.action.SENDTO"

    .line 74
    .line 75
    const v12, 0x1040691

    .line 76
    .line 77
    .line 78
    const v13, 0x1040693

    .line 79
    .line 80
    .line 81
    const v14, 0x1040692

    .line 82
    .line 83
    .line 84
    move-object v8, v2

    .line 85
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 86
    .line 87
    .line 88
    sput-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 89
    .line 90
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 91
    .line 92
    const-string v16, "SEND_MULTIPLE"

    .line 93
    .line 94
    const/16 v17, 0x4

    .line 95
    .line 96
    const-string v18, "android.intent.action.SEND_MULTIPLE"

    .line 97
    .line 98
    move-object v15, v3

    .line 99
    invoke-direct/range {v15 .. v21}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 100
    .line 101
    .line 102
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 103
    .line 104
    new-instance v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 105
    .line 106
    const-string v9, "CAPTURE_IMAGE"

    .line 107
    .line 108
    const/4 v10, 0x5

    .line 109
    const-string v11, "android.media.action.IMAGE_CAPTURE"

    .line 110
    .line 111
    const v12, 0x104068b

    .line 112
    .line 113
    .line 114
    const v13, 0x104068d

    .line 115
    .line 116
    .line 117
    const v14, 0x104068c

    .line 118
    .line 119
    .line 120
    move-object v8, v4

    .line 121
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 122
    .line 123
    .line 124
    sput-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 125
    .line 126
    new-instance v5, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 127
    .line 128
    const-string v16, "DEFAULT"

    .line 129
    .line 130
    const/16 v17, 0x6

    .line 131
    .line 132
    const/16 v18, 0x0

    .line 133
    .line 134
    const v19, 0x1040682

    .line 135
    .line 136
    .line 137
    const v20, 0x1040684

    .line 138
    .line 139
    .line 140
    const v21, 0x1040683

    .line 141
    .line 142
    .line 143
    move-object v15, v5

    .line 144
    invoke-direct/range {v15 .. v21}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 145
    .line 146
    .line 147
    sput-object v5, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 148
    .line 149
    new-instance v6, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 150
    .line 151
    const-string v9, "HOME"

    .line 152
    .line 153
    const/4 v10, 0x7

    .line 154
    const-string v11, "android.intent.action.MAIN"

    .line 155
    .line 156
    const v12, 0x1040688

    .line 157
    .line 158
    .line 159
    const v13, 0x104068a

    .line 160
    .line 161
    .line 162
    const v14, 0x1040689

    .line 163
    .line 164
    .line 165
    move-object v8, v6

    .line 166
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 167
    .line 168
    .line 169
    sput-object v6, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 170
    .line 171
    const/16 v8, 0x8

    .line 172
    .line 173
    new-array v8, v8, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 174
    .line 175
    const/4 v9, 0x0

    .line 176
    aput-object v7, v8, v9

    .line 177
    .line 178
    const/4 v7, 0x1

    .line 179
    aput-object v0, v8, v7

    .line 180
    .line 181
    const/4 v0, 0x2

    .line 182
    aput-object v1, v8, v0

    .line 183
    .line 184
    const/4 v0, 0x3

    .line 185
    aput-object v2, v8, v0

    .line 186
    .line 187
    const/4 v0, 0x4

    .line 188
    aput-object v3, v8, v0

    .line 189
    .line 190
    const/4 v0, 0x5

    .line 191
    aput-object v4, v8, v0

    .line 192
    .line 193
    const/4 v0, 0x6

    .line 194
    aput-object v5, v8, v0

    .line 195
    .line 196
    const/4 v0, 0x7

    .line 197
    aput-object v6, v8, v0

    .line 198
    .line 199
    sput-object v8, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 200
    .line 201
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    .line 7
    .line 8
    iput p5, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    .line 9
    .line 10
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    .line 11
    .line 12
    return-void
.end method

.method public static forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 12
    .line 13
    if-eq v3, v4, :cond_0

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget-object v4, v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 30
    .line 31
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 1

    const-class v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 1

    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-virtual {v0}, [Lcom/android/internal/app/ResolverActivity$ActionTitle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method
