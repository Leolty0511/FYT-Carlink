.class public Lcom/android/internal/app/DumpHeapActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final ACTION_DELETE_DUMPHEAP:Ljava/lang/String; = "com.android.server.am.DELETE_DUMPHEAP"

.field public static final EXTRA_DELAY_DELETE:Ljava/lang/String; = "delay_delete"

.field public static final JAVA_URI:Landroid/net/Uri;

.field public static final KEY_DIRECT_LAUNCH:Ljava/lang/String; = "direct_launch"

.field public static final KEY_PROCESS:Ljava/lang/String; = "process"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field mHandled:Z

.field mProcess:Ljava/lang/String;

.field mSize:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.android.server.heapdump/java"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "process"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/internal/app/DumpHeapActivity;->mProcess:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string/jumbo v0, "size"

    .line 21
    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mSize:J

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "direct_launch"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v0, 0x0

    .line 42
    const/4 v1, 0x1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    new-instance v2, Landroid/content/Intent;

    .line 46
    .line 47
    const-string v3, "android.app.action.REPORT_HEAP_LIMIT"

    .line 48
    .line 49
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    sget-object v4, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 60
    .line 61
    const-string v5, "Heap Dump"

    .line 62
    .line 63
    invoke-static {v3, v5, v4}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3, v0}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    const-string v3, "android.intent.extra.STREAM"

    .line 85
    .line 86
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->scheduleDelete()V

    .line 93
    .line 94
    .line 95
    iput-boolean v1, p0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :catch_0
    move-exception v2

    .line 102
    const-string v3, "Unable to direct launch to "

    .line 103
    .line 104
    const-string v4, ": "

    .line 105
    .line 106
    invoke-static {v3, p1, v4}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string v2, "DumpHeapActivity"

    .line 122
    .line 123
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 127
    .line 128
    const v2, 0x103023a

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 132
    .line 133
    .line 134
    const v2, 0x10401b8

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 138
    .line 139
    .line 140
    const/4 v2, 0x2

    .line 141
    new-array v2, v2, [Ljava/lang/Object;

    .line 142
    .line 143
    iget-object v3, p0, Lcom/android/internal/app/DumpHeapActivity;->mProcess:Ljava/lang/String;

    .line 144
    .line 145
    aput-object v3, v2, v0

    .line 146
    .line 147
    iget-wide v3, p0, Lcom/android/internal/app/DumpHeapActivity;->mSize:J

    .line 148
    .line 149
    const/4 v0, 0x0

    .line 150
    invoke-static {v3, v4, v0}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    aput-object v0, v2, v1

    .line 155
    .line 156
    const v0, 0x10401b7

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 164
    .line 165
    .line 166
    new-instance v0, Lcom/android/internal/app/DumpHeapActivity$1;

    .line 167
    .line 168
    invoke-direct {v0, p0}, Lcom/android/internal/app/DumpHeapActivity$1;-><init>(Lcom/android/internal/app/DumpHeapActivity;)V

    .line 169
    .line 170
    .line 171
    const/high16 v1, 0x1040000

    .line 172
    .line 173
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    .line 175
    .line 176
    new-instance v0, Lcom/android/internal/app/DumpHeapActivity$2;

    .line 177
    .line 178
    invoke-direct {v0, p0}, Lcom/android/internal/app/DumpHeapActivity$2;-><init>(Lcom/android/internal/app/DumpHeapActivity;)V

    .line 179
    .line 180
    .line 181
    const v1, 0x104000a

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Landroid/app/AlertDialog;

    .line 192
    .line 193
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Landroid/app/AlertDialog;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v1, "com.android.server.am.DELETE_DUMPHEAP"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public scheduleDelete()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.android.server.am.DELETE_DUMPHEAP"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "delay_delete"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
