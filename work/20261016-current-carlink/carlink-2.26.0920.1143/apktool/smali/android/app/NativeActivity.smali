.class public Landroid/app/NativeActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Landroid/view/InputQueue$Callback;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NativeActivity$NativeContentView;
    }
.end annotation


# static fields
.field private static final KEY_NATIVE_SAVED_STATE:Ljava/lang/String; = "android:native_state"

.field public static final META_DATA_FUNC_NAME:Ljava/lang/String; = "android.app.func_name"

.field public static final META_DATA_LIB_NAME:Ljava/lang/String; = "android.app.lib_name"


# instance fields
.field private mCurInputQueue:Landroid/view/InputQueue;

.field private mCurSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mDestroyed:Z

.field private mDispatchingUnhandledKey:Z

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mLastContentHeight:I

.field mLastContentWidth:I

.field mLastContentX:I

.field mLastContentY:I

.field final mLocation:[I

.field private mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

.field private mNativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    .line 8
    .line 9
    return-void
.end method

.method private static getAbsolutePath(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private native getDlError()Ljava/lang/String;
.end method

.method private native loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[BLjava/lang/ClassLoader;Ljava/lang/String;)J
.end method

.method private native onConfigurationChangedNative(J)V
.end method

.method private native onContentRectChangedNative(JIIII)V
.end method

.method private native onInputQueueCreatedNative(JJ)V
.end method

.method private native onInputQueueDestroyedNative(JJ)V
.end method

.method private native onLowMemoryNative(J)V
.end method

.method private native onPauseNative(J)V
.end method

.method private native onResumeNative(J)V
.end method

.method private native onSaveInstanceStateNative(J)[B
.end method

.method private native onStartNative(J)V
.end method

.method private native onStopNative(J)V
.end method

.method private native onSurfaceChangedNative(JLandroid/view/Surface;III)V
.end method

.method private native onSurfaceCreatedNative(JLandroid/view/Surface;)V
.end method

.method private native onSurfaceDestroyedNative(J)V
.end method

.method private native onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V
.end method

.method private native onWindowFocusChangedNative(JZ)V
.end method

.method private native unloadNativeCode(J)V
.end method


# virtual methods
.method public hideIme(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onConfigurationChangedNative(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 6
    .line 7
    invoke-virtual {v13, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 12
    .line 13
    iput-object v1, v13, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v13}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v13}, Landroid/view/Window;->takeInputQueue(Landroid/view/InputQueue$Callback;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x4

    .line 34
    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/16 v2, 0x10

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Landroid/app/NativeActivity$NativeContentView;

    .line 47
    .line 48
    invoke-direct {v1, v13}, Landroid/app/NativeActivity$NativeContentView;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, v13, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    .line 52
    .line 53
    iput-object v13, v1, Landroid/app/NativeActivity$NativeContentView;->mActivity:Landroid/app/NativeActivity;

    .line 54
    .line 55
    invoke-virtual {v13, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v13, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 61
    .line 62
    .line 63
    iget-object v1, v13, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, v13}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 70
    .line 71
    .line 72
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const/16 v3, 0x80

    .line 85
    .line 86
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    const-string/jumbo v3, "main"

    .line 93
    .line 94
    .line 95
    const-string v4, "ANativeActivity_onCreate"

    .line 96
    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    :try_start_1
    const-string v5, "android.app.lib_name"

    .line 100
    .line 101
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-eqz v2, :cond_0

    .line 106
    .line 107
    move-object v3, v2

    .line 108
    :cond_0
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 109
    .line 110
    const-string v2, "android.app.func_name"

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    if-eqz v1, :cond_1

    .line 117
    .line 118
    move-object v4, v1

    .line 119
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object v11, v1

    .line 124
    check-cast v11, Ldalvik/system/BaseDexClassLoader;

    .line 125
    .line 126
    invoke-virtual {v11, v3}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v14

    .line 130
    if-eqz v14, :cond_4

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    const-string v2, "android:native_state"

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    move-object v10, v2

    .line 142
    goto :goto_0

    .line 143
    :cond_2
    move-object v10, v1

    .line 144
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-static {v2}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getObbDir()Ljava/io/File;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v2}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {v13, v1}, Landroid/content/ContextWrapper;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 173
    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getAssets()Landroid/content/res/AssetManager;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    invoke-virtual {v11}, Ldalvik/system/BaseDexClassLoader;->getLdLibraryPath()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    move-object/from16 v1, p0

    .line 183
    .line 184
    move-object v2, v14

    .line 185
    move-object v3, v4

    .line 186
    move-object v4, v5

    .line 187
    move-object v5, v6

    .line 188
    move-object v6, v7

    .line 189
    move-object v7, v8

    .line 190
    move v8, v9

    .line 191
    move-object v9, v12

    .line 192
    move-object v12, v15

    .line 193
    invoke-direct/range {v1 .. v12}, Landroid/app/NativeActivity;->loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[BLjava/lang/ClassLoader;Ljava/lang/String;)J

    .line 194
    .line 195
    .line 196
    move-result-wide v1

    .line 197
    iput-wide v1, v13, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 198
    .line 199
    const-wide/16 v3, 0x0

    .line 200
    .line 201
    cmp-long v1, v1, v3

    .line 202
    .line 203
    if-eqz v1, :cond_3

    .line 204
    .line 205
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_3
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    .line 210
    .line 211
    const-string v1, "Unable to load native library \""

    .line 212
    .line 213
    const-string v2, "\": "

    .line 214
    .line 215
    invoke-static {v1, v14, v2}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-direct/range {p0 .. p0}, Landroid/app/NativeActivity;->getDlError()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v0

    .line 234
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 235
    .line 236
    const-string v1, "Unable to find native library "

    .line 237
    .line 238
    const-string v2, " using classloader: "

    .line 239
    .line 240
    invoke-static {v1, v3, v2}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v11}, Ldalvik/system/BaseDexClassLoader;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    new-instance v1, Ljava/lang/RuntimeException;

    .line 261
    .line 262
    const-string v2, "Error getting activity info"

    .line 263
    .line 264
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    .line 266
    .line 267
    throw v1
.end method

.method public onDestroy()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 10
    .line 11
    invoke-direct {p0, v2, v3}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/InputQueue;->getNativePtr()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(JJ)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 30
    .line 31
    :cond_1
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 32
    .line 33
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->unloadNativeCode(J)V

    .line 34
    .line 35
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    iget-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aget v4, v0, v1

    .line 24
    .line 25
    iget v1, p0, Landroid/app/NativeActivity;->mLastContentX:I

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-ne v4, v1, :cond_0

    .line 29
    .line 30
    aget v1, v0, v2

    .line 31
    .line 32
    iget v3, p0, Landroid/app/NativeActivity;->mLastContentY:I

    .line 33
    .line 34
    if-ne v1, v3, :cond_0

    .line 35
    .line 36
    iget v1, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    .line 37
    .line 38
    if-ne v6, v1, :cond_0

    .line 39
    .line 40
    iget v1, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    .line 41
    .line 42
    if-eq v7, v1, :cond_1

    .line 43
    .line 44
    :cond_0
    iput v4, p0, Landroid/app/NativeActivity;->mLastContentX:I

    .line 45
    .line 46
    aget v5, v0, v2

    .line 47
    .line 48
    iput v5, p0, Landroid/app/NativeActivity;->mLastContentY:I

    .line 49
    .line 50
    iput v6, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    .line 51
    .line 52
    iput v7, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    .line 53
    .line 54
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 55
    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 59
    .line 60
    move-object v1, p0

    .line 61
    invoke-direct/range {v1 .. v7}, Landroid/app/NativeActivity;->onContentRectChangedNative(JIIII)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public onInputQueueCreated(Landroid/view/InputQueue;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueCreatedNative(JJ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onInputQueueDestroyed(Landroid/view/InputQueue;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(JJ)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onLowMemoryNative(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onPauseNative(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onResumeNative(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSaveInstanceStateNative(J)[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "android:native_state"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStartNative(J)V

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
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStopNative(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 9
    .line 10
    invoke-direct {p0, v0, v1, p1}, Landroid/app/NativeActivity;->onWindowFocusChangedNative(JZ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setWindowFlags(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public setWindowFormat(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public showIme(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 6
    .line 7
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 8
    .line 9
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    move-object v1, p0

    .line 14
    move v5, p2

    .line 15
    move v6, p3

    .line 16
    move v7, p4

    .line 17
    invoke-direct/range {v1 .. v7}, Landroid/app/NativeActivity;->onSurfaceChangedNative(JLandroid/view/Surface;III)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 8
    .line 9
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, v0, v1, p1}, Landroid/app/NativeActivity;->onSurfaceCreatedNative(JLandroid/view/Surface;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3
    .line 4
    iget-boolean p1, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 8
    .line 9
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, v0, v1, p1}, Landroid/app/NativeActivity;->onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final synthetic surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/d;->a(Landroid/view/SurfaceHolder$Callback2;Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V

    return-void
.end method
