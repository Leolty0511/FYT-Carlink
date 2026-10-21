.class Landroid/renderscript/RenderScript$MessageThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageThread"
.end annotation


# static fields
.field public static final RS_ERROR_FATAL_DEBUG:I = 0x800

.field public static final RS_ERROR_FATAL_UNKNOWN:I = 0x1000

.field public static final RS_MESSAGE_TO_CLIENT_ERROR:I = 0x3

.field public static final RS_MESSAGE_TO_CLIENT_EXCEPTION:I = 0x1

.field public static final RS_MESSAGE_TO_CLIENT_NEW_BUFFER:I = 0x5

.field public static final RS_MESSAGE_TO_CLIENT_NONE:I = 0x0

.field public static final RS_MESSAGE_TO_CLIENT_RESIZE:I = 0x2

.field public static final RS_MESSAGE_TO_CLIENT_USER:I = 0x4


# instance fields
.field public mAuxData:[I

.field public mRS:Landroid/renderscript/RenderScript;

.field public mRun:Z


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1

    const-string v0, "RSMessageThread"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    .line 4
    iput-object p1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget v2, v1, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->nContextInitToClient(I)V

    .line 2
    :catch_0
    :goto_0
    iget-boolean v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    .line 3
    aput v1, v0, v1

    .line 4
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget v3, v2, Landroid/renderscript/RenderScript;->mContext:I

    iget-object v4, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nContextPeekMessage(I[I)I

    move-result v2

    .line 5
    iget-object v3, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    const/4 v4, 0x1

    aget v4, v3, v4

    .line 6
    aget v3, v3, v1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3

    shr-int/lit8 v1, v4, 0x2

    .line 7
    array-length v2, v0

    if-lt v1, v2, :cond_0

    add-int/lit8 v0, v4, 0x3

    shr-int/lit8 v0, v0, 0x2

    .line 8
    new-array v0, v0, [I

    .line 9
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget v2, v1, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {v1, v2, v0}, Landroid/renderscript/RenderScript;->nContextGetUserMessage(I[I)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 10
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    if-eqz v1, :cond_1

    .line 11
    iput-object v0, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mData:[I

    .line 12
    iput v3, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mID:I

    .line 13
    iput v4, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mLength:I

    .line 14
    invoke-virtual {v1}, Landroid/renderscript/RenderScript$RSMessageHandler;->run()V

    goto :goto_0

    .line 15
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Received a message from the script with no message handler installed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_2
    new-instance v0, Landroid/renderscript/RSDriverException;

    const-string v1, "Error processing message from RenderScript."

    invoke-direct {v0, v1}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    .line 17
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget v2, v1, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->nContextGetErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    if-ge v3, v2, :cond_6

    const/16 v2, 0x800

    if-lt v3, v2, :cond_4

    .line 18
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v2, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    sget-object v5, Landroid/renderscript/RenderScript$ContextType;->DEBUG:Landroid/renderscript/RenderScript$ContextType;

    if-ne v4, v5, :cond_6

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    if-eqz v2, :cond_6

    .line 19
    :cond_4
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    if-eqz v2, :cond_5

    .line 20
    iput-object v1, v2, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorMessage:Ljava/lang/String;

    .line 21
    iput v3, v2, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorNum:I

    .line 22
    invoke-virtual {v2}, Landroid/renderscript/RenderScript$RSErrorHandler;->run()V

    goto :goto_0

    .line 23
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non fatal RS error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderScript_jni"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 24
    :cond_6
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fatal error "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v4, 0x5

    if-ne v2, v4, :cond_8

    .line 25
    invoke-static {v3}, Landroid/renderscript/Allocation;->sendBufferNotification(I)V

    goto/16 :goto_0

    :cond_8
    const-wide/16 v2, 0x1

    .line 26
    :try_start_0
    invoke-static {v2, v3, v1}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_9
    return-void
.end method
