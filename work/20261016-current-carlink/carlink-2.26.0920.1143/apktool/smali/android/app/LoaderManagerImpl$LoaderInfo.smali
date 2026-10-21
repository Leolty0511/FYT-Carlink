.class final Landroid/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/content/Loader$OnLoadCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/content/Loader$OnLoadCanceledListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mArgs:Landroid/os/Bundle;

.field mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mData:Ljava/lang/Object;

.field mDeliveredData:Z

.field mDestroyed:Z

.field mHaveData:Z

.field final mId:I

.field mListenerRegistered:Z

.field mLoader:Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

.field mReportNextStart:Z

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final synthetic this$0:Landroid/app/LoaderManagerImpl;


# direct methods
.method public constructor <init>(Landroid/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 7
    .line 8
    iput-object p3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 9
    .line 10
    iput-object p4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "  onLoadFinished in "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 22
    .line 23
    iget-object v1, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 26
    .line 27
    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v2, v2, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 32
    .line 33
    const-string/jumbo v3, "onLoadFinished"

    .line 34
    .line 35
    .line 36
    iput-object v3, v2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    :try_start_0
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    const-string v2, "LoaderManager"

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ": "

    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 74
    .line 75
    invoke-interface {v0, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 79
    .line 80
    invoke-static {p1}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 87
    .line 88
    invoke-static {p1}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p1, p1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 93
    .line 94
    iput-object v1, p1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 95
    .line 96
    :cond_2
    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    iget-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 102
    .line 103
    invoke-static {p2}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    if-eqz p2, :cond_3

    .line 108
    .line 109
    iget-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 110
    .line 111
    invoke-static {p2}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    iget-object p2, p2, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 116
    .line 117
    iput-object v1, p2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 118
    .line 119
    :cond_3
    throw p1

    .line 120
    :cond_4
    :goto_1
    return-void
.end method

.method public cancel()Z
    .locals 2

    .line 1
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "  Canceling: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "LoaderManager"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Loader;->cancelLoad()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->onLoadCanceled(Landroid/content/Loader;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return v0

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    return v0
.end method

.method public destroy()V
    .locals 5

    .line 1
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "LoaderManager"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "  Destroying: "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    .line 26
    .line 27
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 31
    .line 32
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_4

    .line 36
    .line 37
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 38
    .line 39
    if-eqz v3, :cond_4

    .line 40
    .line 41
    iget-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 42
    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v3, "  Reseting: "

    .line 54
    .line 55
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 69
    .line 70
    invoke-static {v0}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 77
    .line 78
    invoke-static {v0}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 83
    .line 84
    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 87
    .line 88
    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 93
    .line 94
    const-string/jumbo v3, "onLoaderReset"

    .line 95
    .line 96
    .line 97
    iput-object v3, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    move-object v0, v4

    .line 101
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 102
    .line 103
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 104
    .line 105
    invoke-interface {v1, v3}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/content/Loader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 109
    .line 110
    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 117
    .line 118
    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 123
    .line 124
    iput-object v0, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catchall_0
    move-exception v1

    .line 128
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 129
    .line 130
    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-eqz v2, :cond_3

    .line 135
    .line 136
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 137
    .line 138
    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget-object v2, v2, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 143
    .line 144
    iput-object v0, v2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 145
    .line 146
    :cond_3
    throw v1

    .line 147
    :cond_4
    :goto_1
    iput-object v4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 148
    .line 149
    iput-object v4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 150
    .line 151
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 152
    .line 153
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 154
    .line 155
    if-eqz v0, :cond_6

    .line 156
    .line 157
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 158
    .line 159
    if-eqz v1, :cond_5

    .line 160
    .line 161
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 162
    .line 163
    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 167
    .line 168
    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 169
    .line 170
    .line 171
    :cond_5
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/content/Loader;->reset()V

    .line 174
    .line 175
    .line 176
    :cond_6
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 177
    .line 178
    if-eqz v0, :cond_7

    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 181
    .line 182
    .line 183
    :cond_7
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "mId="

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 11
    .line 12
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 13
    .line 14
    .line 15
    const-string v0, " mArgs="

    .line 16
    .line 17
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v0, "mCallbacks="

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 35
    .line 36
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v0, "mLoader="

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 49
    .line 50
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 54
    .line 55
    const-string v1, "  "

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-static {p1, v1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 67
    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string/jumbo v0, "mHaveData="

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 84
    .line 85
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 86
    .line 87
    .line 88
    const-string v0, "  mDeliveredData="

    .line 89
    .line 90
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 94
    .line 95
    const-string/jumbo v2, "mData="

    .line 96
    .line 97
    .line 98
    invoke-static {p3, v0, p1, v2}, Landroid/accessibilityservice/c;->y(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string/jumbo v0, "mStarted="

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 116
    .line 117
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 118
    .line 119
    .line 120
    const-string v0, " mReportNextStart="

    .line 121
    .line 122
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 126
    .line 127
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 128
    .line 129
    .line 130
    const-string v0, " mDestroyed="

    .line 131
    .line 132
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    .line 136
    .line 137
    const-string/jumbo v2, "mRetaining="

    .line 138
    .line 139
    .line 140
    invoke-static {p3, v0, p1, v2}, Landroid/accessibilityservice/c;->y(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 144
    .line 145
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 146
    .line 147
    .line 148
    const-string v0, " mRetainingStarted="

    .line 149
    .line 150
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    .line 154
    .line 155
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 156
    .line 157
    .line 158
    const-string v0, " mListenerRegistered="

    .line 159
    .line 160
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 164
    .line 165
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 169
    .line 170
    if-eqz v0, :cond_3

    .line 171
    .line 172
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v0, "Pending Loader "

    .line 176
    .line 177
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 181
    .line 182
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    const-string v0, ":"

    .line 186
    .line 187
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 191
    .line 192
    invoke-static {p1, v1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_3
    return-void
.end method

.method public finishRetain()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "  Finished Retaining: "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "LoaderManager"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 30
    .line 31
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 32
    .line 33
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    .line 34
    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 55
    .line 56
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public onLoadCanceled(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 2
    .line 3
    const-string v0, "LoaderManager"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "onLoadCanceled: "

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-boolean p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-string p1, "  Ignoring load canceled -- destroyed"

    .line 34
    .line 35
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :cond_2
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 40
    .line 41
    iget-object p1, p1, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    .line 42
    .line 43
    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eq p1, p0, :cond_4

    .line 50
    .line 51
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    const-string p1, "  Ignoring load canceled -- not active"

    .line 56
    .line 57
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void

    .line 61
    :cond_4
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 62
    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "  Switching to pending loader: "

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_5
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 88
    .line 89
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 90
    .line 91
    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    .line 92
    .line 93
    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 94
    .line 95
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V

    .line 104
    .line 105
    .line 106
    :cond_6
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "LoaderManager"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onLoadComplete: "

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-string p1, "  Ignoring load complete -- destroyed"

    .line 34
    .line 35
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :cond_2
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 40
    .line 41
    iget-object v0, v0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    .line 42
    .line 43
    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eq v0, p0, :cond_4

    .line 50
    .line 51
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    const-string p1, "  Ignoring load complete -- not active"

    .line 56
    .line 57
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void

    .line 61
    :cond_4
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    sget-boolean p1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string p2, "  Switching to pending loader: "

    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_5
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 88
    .line 89
    iget-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 90
    .line 91
    iget-object p2, p2, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    .line 92
    .line 93
    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 94
    .line 95
    invoke-virtual {p2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_6
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 108
    .line 109
    if-ne v0, p2, :cond_7

    .line 110
    .line 111
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 112
    .line 113
    if-nez v0, :cond_8

    .line 114
    .line 115
    :cond_7
    iput-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 116
    .line 117
    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 119
    .line 120
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 121
    .line 122
    if-eqz v0, :cond_8

    .line 123
    .line 124
    invoke-virtual {p0, p1, p2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_8
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 128
    .line 129
    iget-object p1, p1, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    .line 130
    .line 131
    iget p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 138
    .line 139
    if-eqz p1, :cond_9

    .line 140
    .line 141
    if-eq p1, p0, :cond_9

    .line 142
    .line 143
    const/4 p2, 0x0

    .line 144
    iput-boolean p2, p1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 150
    .line 151
    iget-object p1, p1, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    .line 152
    .line 153
    iget p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 156
    .line 157
    .line 158
    :cond_9
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 159
    .line 160
    invoke-static {p1}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_a

    .line 165
    .line 166
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_a

    .line 173
    .line 174
    iget-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    .line 175
    .line 176
    invoke-static {p1}, Landroid/app/LoaderManagerImpl;->access$000(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget-object p1, p1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 183
    .line 184
    .line 185
    :cond_a
    return-void
.end method

.method public reportStart()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 11
    .line 12
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 21
    .line 22
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public retain()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "  Retaining: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "LoaderManager"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 26
    .line 27
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 36
    .line 37
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 19
    .line 20
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "  Starting: "

    .line 27
    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v2, "LoaderManager"

    .line 39
    .line 40
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 52
    .line 53
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-interface {v0, v2, v3}, Landroid/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 62
    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_5
    :goto_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 115
    .line 116
    if-nez v0, :cond_6

    .line 117
    .line 118
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 119
    .line 120
    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 121
    .line 122
    invoke-virtual {v0, v2, p0}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 126
    .line 127
    invoke-virtual {v0, p0}, Landroid/content/Loader;->registerOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 128
    .line 129
    .line 130
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 131
    .line 132
    :cond_6
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    .line 135
    .line 136
    .line 137
    :cond_7
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "  Stopping: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "LoaderManager"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 26
    .line 27
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 40
    .line 41
    invoke-virtual {v1, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    const-string v1, "LoaderInfo{"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->q(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " #"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " : "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v1, "}}"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
