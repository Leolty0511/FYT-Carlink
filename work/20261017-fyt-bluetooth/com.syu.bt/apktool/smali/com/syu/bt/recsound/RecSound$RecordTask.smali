.class Lcom/syu/bt/recsound/RecSound$RecordTask;
.super Landroid/os/AsyncTask;
.source "RecSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/recsound/RecSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordTask"
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
    .line 66
    iput-object p1, p0, Lcom/syu/bt/recsound/RecSound$RecordTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/syu/bt/recsound/RecSound$RecordTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    .line 69
    iget-object v1, p0, Lcom/syu/bt/recsound/RecSound$RecordTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v1, v2}, Lcom/syu/bt/recsound/RecSound;->access$0(Lcom/syu/bt/recsound/RecSound;Z)V

    .line 72
    :try_start_0
    new-instance v8, Ljava/io/DataOutputStream;

    .line 73
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    .line 74
    iget-object v3, p0, Lcom/syu/bt/recsound/RecSound$RecordTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v3}, Lcom/syu/bt/recsound/RecSound;->access$1(Lcom/syu/bt/recsound/RecSound;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 73
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 72
    invoke-direct {v8, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v8, "dos":Ljava/io/DataOutputStream;
    iget-object v1, p0, Lcom/syu/bt/recsound/RecSound$RecordTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v1}, Lcom/syu/bt/recsound/RecSound;->access$2(Lcom/syu/bt/recsound/RecSound;)I

    move-result v1

    .line 77
    iget-object v2, p0, Lcom/syu/bt/recsound/RecSound$RecordTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v2}, Lcom/syu/bt/recsound/RecSound;->access$3(Lcom/syu/bt/recsound/RecSound;)I

    move-result v2

    iget-object v3, p0, Lcom/syu/bt/recsound/RecSound$RecordTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v3}, Lcom/syu/bt/recsound/RecSound;->access$4(Lcom/syu/bt/recsound/RecSound;)I

    move-result v3

    .line 76
    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 79
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioRecord;

    .line 80
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/syu/bt/recsound/RecSound$RecordTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v2}, Lcom/syu/bt/recsound/RecSound;->access$2(Lcom/syu/bt/recsound/RecSound;)I

    move-result v2

    .line 81
    iget-object v3, p0, Lcom/syu/bt/recsound/RecSound$RecordTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v3}, Lcom/syu/bt/recsound/RecSound;->access$3(Lcom/syu/bt/recsound/RecSound;)I

    move-result v3

    iget-object v4, p0, Lcom/syu/bt/recsound/RecSound$RecordTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v4}, Lcom/syu/bt/recsound/RecSound;->access$4(Lcom/syu/bt/recsound/RecSound;)I

    move-result v4

    .line 79
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 83
    .local v0, "record":Landroid/media/AudioRecord;
    new-array v6, v5, [S

    .line 86
    .local v6, "buffer":[S
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 88
    const/4 v10, 0x0

    .line 90
    .local v10, "r":I
    :goto_0
    iget-object v1, p0, Lcom/syu/bt/recsound/RecSound$RecordTask;->this$0:Lcom/syu/bt/recsound/RecSound;

    invoke-static {v1}, Lcom/syu/bt/recsound/RecSound;->access$5(Lcom/syu/bt/recsound/RecSound;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 103
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 107
    .end local v0    # "record":Landroid/media/AudioRecord;
    .end local v5    # "bufferSize":I
    .end local v6    # "buffer":[S
    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .end local v10    # "r":I
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 94
    .restart local v0    # "record":Landroid/media/AudioRecord;
    .restart local v5    # "bufferSize":I
    .restart local v6    # "buffer":[S
    .restart local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "r":I
    :cond_0
    const/4 v1, 0x0

    array-length v2, v6

    invoke-virtual {v0, v6, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v7

    .line 95
    .local v7, "bufferReadResult":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-lt v9, v7, :cond_1

    .line 98
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/syu/bt/recsound/RecSound$RecordTask;->publishProgress([Ljava/lang/Object;)V

    .line 99
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 96
    :cond_1
    aget-short v1, v6, v9

    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 104
    .end local v0    # "record":Landroid/media/AudioRecord;
    .end local v5    # "bufferSize":I
    .end local v6    # "buffer":[S
    .end local v7    # "bufferReadResult":I
    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "i":I
    .end local v10    # "r":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method
