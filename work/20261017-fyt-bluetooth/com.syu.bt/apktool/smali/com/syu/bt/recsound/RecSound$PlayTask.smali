.class Lcom/syu/bt/recsound/RecSound$PlayTask;
.super Landroid/os/AsyncTask;
.source "RecSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/recsound/RecSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/recsound/RecSound;


# direct methods
.method constructor <init>(Lcom/syu/bt/recsound/RecSound;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/syu/bt/recsound/RecSound$PlayTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/syu/bt/recsound/RecSound$PlayTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    .line 115
    iget-object v1, p0, Lcom/syu/bt/recsound/RecSound$PlayTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v1, v2}, Lcom/syu/bt/recsound/RecSound;->access$6(Lcom/syu/bt/recsound/RecSound;Z)V

    .line 116
    iget-object v1, p0, Lcom/syu/bt/recsound/RecSound$PlayTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v1}, Lcom/syu/bt/recsound/RecSound;->access$2(Lcom/syu/bt/recsound/RecSound;)I

    move-result v1

    .line 117
    iget-object v2, p0, Lcom/syu/bt/recsound/RecSound$PlayTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v2}, Lcom/syu/bt/recsound/RecSound;->access$3(Lcom/syu/bt/recsound/RecSound;)I

    move-result v2

    iget-object v3, p0, Lcom/syu/bt/recsound/RecSound$PlayTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v3}, Lcom/syu/bt/recsound/RecSound;->access$4(Lcom/syu/bt/recsound/RecSound;)I

    move-result v3

    .line 116
    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 118
    .local v5, "bufferSize":I
    div-int/lit8 v1, v5, 0x4

    new-array v7, v1, [S

    .line 121
    .local v7, "buffer":[S
    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    .line 122
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    .line 123
    iget-object v3, p0, Lcom/syu/bt/recsound/RecSound$PlayTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v3}, Lcom/syu/bt/recsound/RecSound;->access$1(Lcom/syu/bt/recsound/RecSound;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 122
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 121
    invoke-direct {v8, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 125
    .local v8, "dis":Ljava/io/DataInputStream;
    new-instance v0, Landroid/media/AudioTrack;

    .line 126
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/syu/bt/recsound/RecSound$PlayTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v2}, Lcom/syu/bt/recsound/RecSound;->access$2(Lcom/syu/bt/recsound/RecSound;)I

    move-result v2

    .line 127
    iget-object v3, p0, Lcom/syu/bt/recsound/RecSound$PlayTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v3}, Lcom/syu/bt/recsound/RecSound;->access$3(Lcom/syu/bt/recsound/RecSound;)I

    move-result v3

    iget-object v4, p0, Lcom/syu/bt/recsound/RecSound$PlayTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v4}, Lcom/syu/bt/recsound/RecSound;->access$4(Lcom/syu/bt/recsound/RecSound;)I

    move-result v4

    .line 128
    const/4 v6, 0x1

    .line 125
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 130
    .local v0, "track":Landroid/media/AudioTrack;
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/syu/bt/recsound/RecSound$PlayTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v1}, Lcom/syu/bt/recsound/RecSound;->access$7(Lcom/syu/bt/recsound/RecSound;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-gtz v1, :cond_1

    .line 144
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 145
    iget-object v1, p0, Lcom/syu/bt/recsound/RecSound$PlayTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/syu/bt/recsound/RecSound;->access$6(Lcom/syu/bt/recsound/RecSound;Z)V

    .line 146
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 147
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 152
    .end local v0    # "track":Landroid/media/AudioTrack;
    .end local v8    # "dis":Ljava/io/DataInputStream;
    :goto_2
    const/4 v1, 0x0

    return-object v1

    .line 133
    .restart local v0    # "track":Landroid/media/AudioTrack;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    :cond_1
    const/4 v9, 0x0

    .line 134
    .local v9, "i":I
    :goto_3
    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_2

    array-length v1, v7

    if-lt v9, v1, :cond_3

    .line 139
    :cond_2
    const/4 v1, 0x0

    array-length v2, v7

    invoke-virtual {v0, v7, v1, v2}, Landroid/media/AudioTrack;->write([SII)I

    goto :goto_0

    .line 149
    .end local v0    # "track":Landroid/media/AudioTrack;
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "i":I
    :catch_0
    move-exception v1

    goto :goto_2

    .line 135
    .restart local v0    # "track":Landroid/media/AudioTrack;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v9    # "i":I
    :cond_3
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    aput-short v1, v7, v9

    .line 136
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 147
    .end local v9    # "i":I
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/syu/bt/InterfaceBt;

    .line 148
    .local v10, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v10}, Lcom/syu/bt/InterfaceBt;->dismissRecordDlg()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
